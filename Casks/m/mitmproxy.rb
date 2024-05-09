cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "10.3.0"
  sha256 arm:   "52ae3bb018d694ff0a0291bf5fc6958655dba1294cf18b21db3d35e383d87c79",
         intel: "cb0b6d3ee8c6c566021be2220b71c890a1dd5216610b3689e6d1bcd70676c872"

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
