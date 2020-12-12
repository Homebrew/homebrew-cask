cask "bluej" do
  version "4.2.2"
  sha256 "37ae5c8c575ac3ee88f6890a7555ae38662f339622528987986a6ae335310311"

  url "https://www.bluej.org/download/files/BlueJ-mac-#{version.no_dots}.zip"
  appcast "https://www.bluej.org"
  name "BlueJ"
  homepage "https://www.bluej.org/"

  app "BlueJ #{version.sub(/[a-z]$/, "")}/BlueJ.app"
end
