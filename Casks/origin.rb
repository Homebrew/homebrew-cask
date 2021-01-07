cask "origin" do
  version "10.5.90.45798"
  sha256 "c6dce12ab3c58bdeac9d1c805e38640f706563199339d5c9fd2b4e911d7d0453"

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
