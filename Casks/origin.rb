cask "origin" do
  version "10.5.91.46291"
  sha256 "25efe8d14f0d7a7d6f1110800a2e5a6ac18456bb8c6cb07372a33e9931a97441"

  url "https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/OriginUpdate_#{version.dots_to_underscores}.zip",
      verified: "origin-a.akamaihd.net/"
  appcast "https://api1.origin.com/autopatch/2/upgradeFrom/#{version}/en_US/PROD?platform=MAC&osVersion=10.14.0"
  name "Origin"
  homepage "https://www.origin.com/"

  auto_updates true

  app "Origin.app"

  preflight do
    # There is no enclosing .app folder, just the 'Contents' of the app in the appcast download
    FileUtils.mv(staged_path.children, staged_path.join("Origin.app").tap(&:mkpath))
  end

  zap trash: [
    "~/Library/Application Support/Origin",
    "~/Library/Saved Application State/com.ea.Origin.savedState",
    "~/Library/LaunchAgents/com.ea.origin.WebHelper.plist",
    "~/Library/Caches/com.ea.Origin",
    "~/Library/Caches/Origin",
  ]
end
