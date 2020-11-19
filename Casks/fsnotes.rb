cask "fsnotes" do
  version "4.8.4,442"
  sha256 "fc5ec32c6412c319927edf0c85bf103ce484d8558bf84868207a2eece30932e3"

  # github.com/glushchenko/fsnotes/ was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma},build#{version.after_comma}/FSNotes_#{version.before_comma}.zip"
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
