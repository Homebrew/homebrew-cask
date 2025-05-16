cask "threema-work" do
  version "1.2.48"
  sha256 :no_check

  url "https://releases.threema.ch/web-electron/v1/release/Threema-Work-Latest.dmg"
  name "Threema Work"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://work.threema.ch/"

  livecheck do
    url "https://threema.ch/en/work/changelog"
    regex(/>\s*Threema\s+Work\s+v?(\d+(?:\.\d+)+)\s+for\s+Desktop\s*</i)
  end

  depends_on macos: ">= :catalina"

  app "Threema Work.app"

  zap trash: [
    "~/Library/Application Support/threema-work-web",
    "~/Library/Logs/threema-work-web",
    "~/Library/Preferences/threema-work-web.plist",
    "~/Library/Saved Application State/threema-work-web.savedState",
  ]
end
