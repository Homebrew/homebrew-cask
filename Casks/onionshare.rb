cask "onionshare" do
  version "2.2"
  sha256 "c9fc5a3634ac4a8d8d27e20f6d7c899962cd25c3d40522a544c9a1835ee66651"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.pkg"
  appcast "https://github.com/micahflee/onionshare/releases.atom"
  name "OnionShare"
  desc "Securely and anonymously send and receive files"
  homepage "https://onionshare.org/"

  pkg "OnionShare-#{version}.pkg"

  uninstall pkgutil: "com.micahflee.onionshare"
end
