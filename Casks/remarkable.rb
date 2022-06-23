cask "remarkable" do
  version "2.14.0.607"
  sha256 "f1861d6706a8fefbad3e6b95cfd6f2b3ac90cde4cf50a7d27d24017515272429"

  url "https://updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Staging_9fb83f4b-c3d3-4d4d-83ca-8970001ea9a3/39780352/reMarkable-#{version}.dmg",
      verified: "updates-download.cloud.remarkable.engineering"
  name "Remarkable"
  desc "View, Screen Share, organize, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  livecheck do
    url "https://get-updates.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/appcast.xml"
    regex(/reMarkable-(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "reMarkable.app"

  zap trash: [
    "~/Library/Application Support/remarkable",
    "~/Library/Caches/com.remarkable.desktop",
    "~/Library/Caches/remarkable",
    "~/Library/Preferences/com.remarkable.desktop.plist",
    "~/Library/Saved Application State/com.remarkable.desktop.savedState",
  ]
end
