cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.44.0"
  sha256 arm:   "da365c8514dc84da71a1ba473296b7880b3e9906586f16eb39365bae2cd7c665",
         intel: "fc58517d49a15d4dad12eb3524bf75eb8f39c7776cdb85d6587ba2141bc9ee42"

  url "https://cdn.getpublii.com/Publii-#{version}-#{arch}.dmg"
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
