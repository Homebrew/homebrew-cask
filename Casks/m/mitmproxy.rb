cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "10.3.1"
  sha256 arm:   "6429fa241da6313cc09a3e11c69f754c689e13d0243650383e7d2b04ff7f8639",
         intel: "1ceabfaf01060029fd0f8ed4c7a75bd0c7e0b55145727b938eed7643e7ad982e"

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
