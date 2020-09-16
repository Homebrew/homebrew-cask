cask "mcbopomofo" do
  version "0.9.11"
  sha256 "eddbdecca34e1139a5c499a8afbc1d8153685908058f0de12647a6de9b2ab99a"

  # github.com/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/McBopomofo/releases/download/#{version}/McBopomofo-Installer-#{version}.zip"
  appcast "https://github.com/openvanilla/McBopomofo/releases.atom"
  name "McBopomofo"
  homepage "https://mcbopomofo.openvanilla.org/"

  installer manual: "McBopomofoInstaller.app"

  uninstall delete: "~/Library/Input Methods/McBopomofo.app"
end
