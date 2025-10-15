cask "meetings-notes" do
  version "0.5.0"
  sha256 "b5e6729e55bef866c0cc36ae63e241530a7a8d52ea63ae6767b53a374e4667b2"

  url "https://github.com/antondudakov/meetings-notes/releases/download/v#{version}/MeetingsNotes-#{version}.dmg",
      verified: "github.com/antondudakov/meetings-notes/"
  name "Meetings Notes"
  desc "Local meeting transcription & summarization (on-device, Apple Silicon optimized)"
  homepage "https://meetingsnotes.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Meetings Notes.app"

  zap trash: [
    "~/Library/Application Support/app.meetingsnotes.mac",
    "~/Library/Caches/app.meetingsnotes.mac",
    "~/Library/Preferences/app.meetingsnotes.mac.plist",
  ]
end
