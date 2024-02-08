cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.44.4"
  sha256 arm:   "9a41012e72bc63335d7b9fe86ad8db370a145fe0b2c1765e5a3aecd639dce91f",
         intel: "523e80a1c16bdc981ee1efa61867086c0036ba97e691badccc99731d9a2b3d45"

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
