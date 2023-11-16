cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.44.1"
  sha256 arm:   "604578a3cf41327ec31bcb7f7c8c597fa2e6de0c4d02ccc8e57bf5ae93a2e26a",
         intel: "c8781b4e5ed7b847caffcc5cd439e3e3e78c6f5d9a679d8be820e44ac5c957cc"

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
