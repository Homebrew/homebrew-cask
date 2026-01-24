cask "threema-work" do
  version "1.2.49"
  sha256 :no_check

  url "https://releases.threema.ch/web-electron/v1/release/Threema-Work-Latest.dmg",
      verified: "releases.threema.ch/"
  name "Threema Work"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.com/products/work"

  # TODO: Update this to check https://threema.com/en/changelog/desktop-md
  # after a stable Threema Work 2.0 version appears.
  livecheck do
    url "https://threema.com/en/changelog"
    regex(/>\s*Threema\s+Work\s+v?(\d+(?:\.\d+)+)\s+for\s+Desktop\s*</i)
  end

  depends_on macos: ">= :big_sur"

  app "Threema Work.app"

  zap trash: [
    "~/Library/Application Support/threema-work-web",
    "~/Library/Logs/threema-work-web",
    "~/Library/Preferences/threema-work-web.plist",
    "~/Library/Saved Application State/threema-work-web.savedState",
  ]
end
