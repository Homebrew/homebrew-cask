cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.2"
  sha256 arm:   "414ed75ed1c00a157dc0650684011e1900d653eb2289ce177de30c47efe7c9c4",
         intel: "01fe7edbaa06ed9449d765010683b457b97ff3caf9b35318c851a8535bbef111"

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
