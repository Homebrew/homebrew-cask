cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "10.2.4"
  sha256 arm:   "7d036d717bc742b49e03cb8cf13b34762765f742938f84312c6bb7ac1090dbf2",
         intel: "be62b805770b4f02b3393056abdc44c5066ec1d725dd98c98fbf74f9e00cd32b"

  url "https://downloads.mitmproxy.org/#{version}/mitmproxy-#{version}-macos-#{arch}.tar.gz"
  name "mitmproxy"
  desc "Intercept, modify, replay, save HTTP/S traffic"
  homepage "https://mitmproxy.org/"

  # The downloads page (https://mitmproxy.org/downloads/) uses an XML file to
  # dynamically generate the list of version directories on load.
  livecheck do
    url "https://downloads.mitmproxy.org/list"
    strategy :xml do |xml|
      xml.get_elements("//ListBucketResult//CommonPrefixes//Prefix").map do |item|
        item.text&.strip&.delete_suffix("/")
      end
    end
  end

  binary "mitmproxy.app/Contents/MacOS/mitmproxy"
  binary "mitmproxy.app/Contents/MacOS/mitmdump"
  binary "mitmproxy.app/Contents/MacOS/mitmweb"

  zap trash: "~/.mitmproxy"
end
