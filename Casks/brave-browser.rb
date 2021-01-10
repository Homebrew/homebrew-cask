cask "brave-browser" do
  version "87.1.18.78,118.78"
  sha256 "5abd11e197ee3e3a7bdf784781553e9b275d969e85abe81c5aab0cfd93e7ff3d"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/stable/#{version.after_comma}/Brave-Browser-x64.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ]
end
