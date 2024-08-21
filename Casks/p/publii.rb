cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.0"
  sha256 arm:   "84956054d990c12011ae89dee08c664e029de2838fa081d1a146647e675a1e0b",
         intel: "895c47ec89b70e98991c3992ea2820c89d0243be3ea137a40f72277f9210b6bd"

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
