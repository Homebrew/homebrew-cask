cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "11.1.3"
  sha256 arm:   "80785cd291c02060c79d5739acff86a12fdd78992b7a0a4066e28aa0e00535bc",
         intel: "7c79184b11ba946be6a56b3b811e15c6d08a25170755728c2f141fd82cb73830"

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
