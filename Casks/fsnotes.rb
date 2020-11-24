cask "fsnotes" do
  version "4.9.0,444"
  sha256 "20356a79a678bb86d199978a7dd7fd7989b17de42716ee84dc78ed2d53f3e2a1"

  # github.com/glushchenko/fsnotes/ was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}b#{version.after_comma}/FSNotes_#{version.before_comma}.zip"
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
