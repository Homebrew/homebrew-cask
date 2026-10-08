cask "privacynotes" do
  version "0.598.0"
  sha256 "0e5b9e4fe09767934749e2158b20710b0f0daa0dfe8b6bf13fdcca80aa0e0317"

  url "https://releases.privacynotes.app/#{version}/PrivacyNotes_#{version}_universal.dmg"
  name "PrivacyNotes"
  desc "End-to-end encrypted notes, tasks, files, journal, passwords and bookmark sync"
  homepage "https://privacynotes.app/"

  livecheck do
    url "https://releases.privacynotes.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "PrivacyNotes.app"

  zap trash: [
    "~/Library/Application Support/app.privacynotes",
    "~/Library/Caches/app.privacynotes",
    "~/Library/HTTPStorages/app.privacynotes",
    "~/Library/Preferences/app.privacynotes.plist",
    "~/Library/Saved Application State/app.privacynotes.savedState",
    "~/Library/WebKit/app.privacynotes",
  ]
end
