cask "privacynotes" do
  version "0.696.1"
  sha256 "302745a7207ca4c75381d654c49860708404323f08007081d9db738ddc980f05"

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
