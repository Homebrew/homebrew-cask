cask "elan" do
  version "6.0"
  sha256 "8b3022783565e26c213cfe6f5caf42331eb97e264f3a6092620a835f66068714"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast "https://archive.mpi.nl/tla/elan/release-notes"
  name "ELAN"
  homepage "https://archive.mpi.nl/tla/elan"

  depends_on macos: ">= :high_sierra"

  app "ELAN_#{version}.app"
end
