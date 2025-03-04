cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.4"
  sha256 arm:   "99dbb99716aaffec27c846f29f89260702e6a1c997e72dfe514be9b12698fb6d",
         intel: "4058915775162e0ef0cddf7989c9facc7f12ea9b561ec7e809b64304663501d9"

  url "https://getpublii.com/download/Publii-#{version}-#{arch}.dmg"
  name "Publii"
  desc "Static website generator"
  homepage "https://getpublii.com/"

  livecheck do
    url "https://getpublii.com/download/"
    regex(/href=.*?Publii[._-]v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg/i)
  end

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
