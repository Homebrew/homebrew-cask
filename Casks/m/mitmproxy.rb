cask "mitmproxy" do
  version "10.2.0"
  sha256 "45dedde31eda91493c71a22c848555abfb88332da22bf201e3ffcb3b376233dd"

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
