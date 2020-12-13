cask "mcbopomofo" do
  version "1.0"
  sha256 "5649e8b37056467fe1f2594796ddcf203d526d8290e0b90137f4fcca997a7178"

  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip",
      verified: "github.com/"
  appcast "https://github.com/openvanilla/McBopomofo/releases.atom"
  name "McBopomofo"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
