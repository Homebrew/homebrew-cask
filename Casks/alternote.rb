cask "alternote" do
  version "1.0.18,1018"
  sha256 "b1a3c0d311b0633bae1a327d393c61a82bf21e2a0363109ef984e8f1c99549ff"

  url "https://alternoteapp.com/assets/downloads/Alternote#{version.csv.second}.zip"
  name "Alternote"
  desc "Note-taking App for Evernote"
  homepage "https://alternoteapp.com/"

  livecheck do
    url "https://alternoteapp.com/assets/appcast.xml"
    strategy :sparkle
  end

  app "Alternote.app"

  uninstall quit: "com.Alternote"

  zap trash: [
    "~/Library/Application Scripts/com.Alternote",
    "~/Library/Containers/com.Alternote",
  ]
end
