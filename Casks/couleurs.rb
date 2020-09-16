cask "couleurs" do
  version "1.2.1"
  sha256 "32d1b1898e9791c8137edc746c9f7ef508a12194669aae567719f58be2c8a876"

  url "https://couleursapp.com/couleurs-#{version}.zip"
  appcast "https://couleursapp.com/updates/releases.xml"
  name "Couleurs"
  homepage "https://couleursapp.com/"

  depends_on macos: ">= :sierra"

  app "Couleurs.app"
end
