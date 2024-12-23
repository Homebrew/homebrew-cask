cask "publii" do
  arch arm: "apple-silicon", intel: "intel"

  version "0.46.3"
  sha256 arm:   "70f4b068a429e9563c2f2eab219b12746eb5328ce3b83af5e84b24f0b31c2c16",
         intel: "ee17f9df32c4ad2675c11ba805b929c050217be4f9e0eda8ebffe7f4b8593ffd"

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
