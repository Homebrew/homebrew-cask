cask "qtpass" do
  version "1.3.2"
  sha256 "04a091602bfd8da1b19e95fcf9cd48df6a544a44a4a1e97cccfb950df90512ef"

  # github.com/IJHack/qtpass/ was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast "https://github.com/IJHack/qtpass/releases.atom"
  name "QtPass"
  desc "Multi-platform GUI for pass, the standard unix password manager"
  homepage "https://qtpass.org/"

  depends_on macos: ">= :sierra"

  app "QtPass.app"
end
