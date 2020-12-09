cask "recordit" do
  version "1.6.10,114"
  sha256 "c6dd0d00665b6b8c143b0e1ae65f6404b4d9015a57dde141a1904b2a29776e45"

  url "https://recordit-co.s3.amazonaws.com/RecordIt.zip",
      verified: "recordit-co.s3.amazonaws.com/"
  name "RecordIt"
  desc "Screencasting software"
  homepage "https://recordit.co/"

  app "RecordIt.app"

  zap trash: [
    "~/Library/Application Support/Recordit",
    "~/Library/Caches/us.freshout.RecordIt",
    "~/Library/Preferences/us.freshout.RecordIt.plist",
  ]
end
