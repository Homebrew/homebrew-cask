cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.41.0"
  sha256 arm:   "b686000e5f6205bcfb3c2defdfe6d31f759fc605fec274aad28e337984406198",
         intel: "0ae7e1418f3b3ee1541bb129625ac6926bb94049d8c13a4528f499b8903e5443"

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
