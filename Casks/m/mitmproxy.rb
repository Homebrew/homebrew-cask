cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "12.1.0"
  sha256 arm:   "d2799748d40d2b743c5753debc4cd24fb8cd3ffe2efbdc55e22a512a3d9d56c8",
         intel: "59e1a2f3f938fd16c98a40cf8e1ca13b4083a40a779d0c32d0d98ac3ec6a4498"

  url "https://downloads.mitmproxy.org/#{version}/mitmproxy-#{version}-macos-#{arch}.tar.gz"
  name "mitmproxy"
  desc "Intercept, modify, replay, save HTTP/S traffic"
  homepage "https://mitmproxy.org/"

  # The downloads page (https://mitmproxy.org/downloads/) uses an XML file to
  # dynamically generate the list of version directories on load.
  livecheck do
    url "https://downloads.mitmproxy.org/list"
    strategy :xml do |xml|
      xml.get_elements("//Prefix").map do |item|
        item.text&.strip&.delete_suffix("/")
      end
    end
  end

  binary "mitmproxy.app/Contents/MacOS/mitmproxy"
  binary "mitmproxy.app/Contents/MacOS/mitmdump"
  binary "mitmproxy.app/Contents/MacOS/mitmweb"

  zap trash: "~/.mitmproxy"
end
