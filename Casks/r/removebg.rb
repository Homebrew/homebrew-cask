cask "removebg" do
  version "2.2.2"
  sha256 "e97ae10fc7584ef78fac5b5f0f650b6ce705b39782bbd87d0605b2e5f3e29bb3"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  name "remove.bg"
  desc "Automatic bulk background removal"
  homepage "https://www.remove.bg/"

  # The in-app updater returns a JSON file, but it is not a valid JSON file
  # so we check the response with a regex using the :page_match strategy instead
  livecheck do
    url "https://storage.googleapis.com/removebg-static/desktop/release/darwin/x64/RELEASES.json"
    regex(/currentRelease"\s*:\s*"v?(\d+(?:\.\d+)+)[ "]/i)
  end

  app "remove.bg.app"

  zap trash: [
    "~/Library/Application Support/remove.bg-desktop",
    "~/Library/Logs/remove.bg",
    "~/Library/Preferences/bg.remove.mac.new.plist",
    "~/Library/Saved Application State/bg.remove.mac.new.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
