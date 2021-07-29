cask "origin" do
  version "10.5.102.48654"
  sha256 :no_check

  url "https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/Origin.dmg",
      verified: "origin-a.akamaihd.net/Origin-Client-Download/"
  name "Origin"
  homepage "https://www.origin.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Origin.app"

  preflight do
    # There is no enclosing .app folder, just the 'Contents' of the app in the appcast download
    FileUtils.mv(staged_path.children, staged_path.join("Origin.app").tap(&:mkpath))
  end

  zap trash: [
    "~/Library/Application Support/Origin",
    "~/Library/Caches/com.ea.Origin",
    "~/Library/Caches/Origin",
    "~/Library/LaunchAgents/com.ea.origin.WebHelper.plist",
    "~/Library/Saved Application State/com.ea.Origin.savedState",
  ]
end
