cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.2"
  sha256 arm:   "b0388644fd4bdb61d8b17b54caba3bd0735b1509d5a75e5d75f6048490f45782",
         intel: "4c324407a3a2b47148fb7256ec307b873deb9ba0d79f004a2897ac45fcd9e0b3"

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
