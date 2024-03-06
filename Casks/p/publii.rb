cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.45.1"
  sha256 arm:   "af57bd61bce164430a63c70a5b4ef64b100ef096d94de6a0e6da3b45cf08a819",
         intel: "ba9c54e625fc0ed1fbeb9f9d85ef7c4db3a3e2a45c81cbd049f1b476ab6df888"

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
