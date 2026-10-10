cask "privacynotes" do
  version "0.621.0"
  sha256 "d77e29c95f0d78a6f2ccbda3fb7d74bec5549bd2a645c196400b4acd15ae122c"

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
