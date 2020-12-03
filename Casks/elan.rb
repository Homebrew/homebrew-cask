cask "elan" do
  version "6.0"
  sha256 "5152cb156ba7218423e6d6ba0af829260cfbbf871b5b33529bb96deede947347"

  url "https://www.mpi.nl/tools/elan/ELAN_#{version.dots_to_hyphens}_mac.zip"
  appcast "https://archive.mpi.nl/tla/elan/release-notes"
  name "ELAN"
  homepage "https://archive.mpi.nl/tla/elan"

  depends_on macos: ">= :high_sierra"

  app "ELAN_#{version}.app"
end
