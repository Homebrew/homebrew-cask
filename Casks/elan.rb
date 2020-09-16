cask "elan" do
  version "5.9"
  sha256 "91aa8a64403641a77a135719a8b5bd7f5a5e5d73649adb1f3eaad92dffde584d"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast "https://archive.mpi.nl/tla/elan/release-notes"
  name "ELAN"
  homepage "https://archive.mpi.nl/tla/elan"

  depends_on macos: ">= :high_sierra"

  app "ELAN_#{version}.app"
end
