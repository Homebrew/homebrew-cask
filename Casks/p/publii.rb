cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.4"
  sha256 arm:   "72892d7baca92acc045046f15641218da4c84f866d5709949a3bf18067c1c0d4",
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
