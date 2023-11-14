cask "mitmproxy" do
  version "10.1.5"
  sha256 "13b8d89b4e5b14005140f10eba06a40b1f87b35a38b43521493b4e38aa96f41e"

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
