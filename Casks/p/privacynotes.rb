cask "privacynotes" do
  version "0.524.2"
  sha256 "92700d36b1c645c41133012f8187ca757fa45c462c36c75443b5f94d55402978"

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
