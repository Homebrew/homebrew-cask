cask "mitmproxy" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "12.2.3"
  sha256 arm:          "0a09ee3b82569e8985aff8186e4792618b8e5d0c766098db093d09a87d4b013a",
         intel:        "7998187f5a0d399ab796af4523d3ad830ebe690726a41bc3e1df47a8e477a641",
         arm64_linux:  "b358643a6c4f4b39e33d985350f660b724fece95687d7daa899ef0c4e211f681",
         x86_64_linux: "2e95286b618fa6fd33e5e62a78c2e5112571d85f42ec2bac29b97ee242bdb5c5"

  on_macos do
    binary "mitmproxy.app/Contents/MacOS/mitmdump"
    binary "mitmproxy.app/Contents/MacOS/mitmproxy"
    binary "mitmproxy.app/Contents/MacOS/mitmweb"
  end
  on_linux do
    binary "mitmdump"
    binary "mitmproxy"
    binary "mitmweb"
  end

  url "https://downloads.mitmproxy.org/#{version}/mitmproxy-#{version}-#{os}-#{arch}.tar.gz"
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

  zap trash: "~/.mitmproxy"
end
