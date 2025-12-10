cask "monocle-app" do
  version "3.0"
  sha256 "e59aa913ba935a3da975af3901d13257ae37f7ab17f80ef2bb1a40570970a047"

  url "https://heyiam.dk/updates/monocle/Monocle-3-0.zip"
  name "Monocle"
  desc "Noise-cancelling for your screen. A modern take on window dimming for macOS."
  homepage "http://monocle.heyiam.dk"

  app "Monocle.app"

  zap trash: [
    "~/Library/Group Containers/com.monocle.settings",
    "~/Library/Preferences/dk.heyiam.monocle.plist",
    "~/Library/Application Support/dk.heyiam.monocle",
  ]
end

