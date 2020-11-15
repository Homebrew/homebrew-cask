cask "fsnotes" do
  version "4.8.1"
  sha256 "cac403082069cbd64d6573066a5d65a1a2c73283dd3f98e89e6c84f1897d3d38"

  # github.com/glushchenko/fsnotes/ was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast "https://github.com/glushchenko/fsnotes/releases.atom"
  name "FSNotes"
  desc "Notes manager"
  homepage "https://fsnot.es/"

  app "FSNotes.app"

  zap trash: [
    "~/Library/Application Scripts/co.fluder.FSNotes",
    "~/Library/Containers/co.fluder.FSNotes",
  ]
end
