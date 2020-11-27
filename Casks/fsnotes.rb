cask "fsnotes" do
  version "4.9.1"
  sha256 "2079b68ac8c0827b0273ad83ecf94372530b9c70e54b483df8ebf60f4d106f21"

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
