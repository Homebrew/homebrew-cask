cask "subsurface@5" do
  version "5.0.10-qt6-universal"
  sha256 :no_check

  url "https://subsurface-divelog.org/downloads/Subsurface-5.0.10-qt6-universal.dmg",
      user_agent: :fake
  name "Subsurface"
  desc "Open source divelog program"
  homepage "https://subsurface-divelog.org/"

  depends_on macos: ">= :big_sur"

  app "Subsurface.app"

  zap trash: [
    "~/Library/Application Support/Subsurface",
    "~/Library/Caches/Subsurface",
    "~/Library/Preferences/org.hohndel.subsurface.Subsurface.plist",
  ]
end
