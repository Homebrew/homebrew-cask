cask "mitmproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "12.0.0"
  sha256 arm:   "d815f9a456f26deb2b48b8fd489cbd14f8f25b80601522d2c73877b04f651c28",
         intel: "7924f2ad111e95efb412e5cbd94e2e5adf502a6ac823596213e8d44e8254e599"

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
