cask "blisk" do
  version "12.0.92.83"
  sha256 "c9cb87f735f27fe0b37921650d8b6b276f2cecc0cdfbed42c95e2b8d67067f0b"

  # bliskcloudstorage.blob.core.windows.net/ was verified as official when first introduced to the cask
  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg"
  appcast "https://blisk.io/"
  name "Blisk Browser"
  homepage "https://blisk.io/"

  app "Blisk.app"
end
