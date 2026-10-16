cask "privacynotes" do
  version "0.653.1"
  sha256 "763df8c7da111cd355f650d45697a72f45d9980351c952942630ec0994d4f6cb"

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
