cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.4"
  sha256 arm:   "99dbb99716aaffec27c846f29f89260702e6a1c997e72dfe514be9b12698fb6d",
         intel: "5ac351c5da08c325e1e3d490a44c40408b874e68cceb4d82a58db7f409c0732d"

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
