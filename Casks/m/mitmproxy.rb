cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "12.2.0"
  sha256 arm:   "63370daeb0c18be1bd4aca868cfc3cbc119debb269c2a5d40e6b34a6167d1229",
         intel: "7a6fdf65c8671a8f8ab0f19381a497e07596299840b7337f90d1fafe6569af37"

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
