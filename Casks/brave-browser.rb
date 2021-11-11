cask "brave-browser" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  folder = Hardware::CPU.intel? ? "stable" : "stable-arm64"

  version "1.31.91.0,131.91"

  if Hardware::CPU.intel?
    sha256 "eb9457065af0cbde7b3429dc14fd419efd3398d4fcb28353865941f183511e3a"
  else
    sha256 "3f491d2c1320dc00ed83f87b679529c628571a4cb9703128474d29243da93f4e"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.after_comma}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
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
