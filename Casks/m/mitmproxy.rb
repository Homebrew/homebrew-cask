cask "mitmproxy" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "12.3.0"
  sha256 arm:          "ce2bccfb20bd75e38647dae35445b0c6d4f8fd7232bed250e9a939de8a6312c2",
         intel:        "58fa1a3fe720cb52b203a8f0b0d2ae963edd6ba545113363cfc0338322526d5c",
         arm64_linux:  "f8756fa831c4abe431dd922ae7291b158b465285562b35d12e5669cbfc29d1f3",
         x86_64_linux: "d52bacb30012023c7e920f322a97a6bc3b0553a7944b520e9aa02278c910b938"

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
