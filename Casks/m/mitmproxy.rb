cask "mitmproxy" do
  version "10.2.2"
  sha256 "4b1b7447de18d3a2b52b3123917b8df749371a2030b779d368462b58b20777d1"

  url "https://downloads.mitmproxy.org/#{version}/mitmproxy-#{version}-macos-x86_64.tar.gz"
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

  caveats do
    requires_rosetta
  end
end
