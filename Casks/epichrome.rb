cask "epichrome" do
  version "2.3.24"
  sha256 "9c37e802574c0cc3f1039178f65a436f37e368fbc1bc473e3262f45564c75142"

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.pkg"
  appcast "https://github.com/dmarmor/epichrome/releases.atom"
  name "Epichrome"
  desc "Tool to create web-based applications that work like standalone apps"
  homepage "https://github.com/dmarmor/epichrome"

  pkg "epichrome-#{version}.pkg"

  uninstall pkgutil: "org.epichrome.Epichrome"
end
