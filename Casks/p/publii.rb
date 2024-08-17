cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.0"
  sha256 arm:   "584fc474a01606eb43ea61d0c52a0de71f3ef4883b36cd2e2d02d3f804be880c",
         intel: "09b296cecf4709efc37acb07ef172a83e4c1ca8a9df7d16ee8cc0359bfa3221b"

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
