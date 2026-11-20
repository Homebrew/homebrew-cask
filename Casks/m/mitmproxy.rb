cask "mitmproxy" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "12.3.1"
  sha256 arm:          "9b7f7a8e3fd1b1544089c937c579ef1f0f503f0ea598c25bda9eab077c735b93",
         intel:        "f4cf5e563e7068af297a27be97686f58917760d3c0dcc6a997ca83f6f5ffb3db",
         arm64_linux:  "97a21d57b2288f7e293e63d3b11af34f394a8bbf760e6cf101ed1d57057a1f40",
         x86_64_linux: "f7b4237f5702f6cd21357fe6e4680a7e905f8f9b816b872230d018ea696c34d5"

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
