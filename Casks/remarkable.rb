cask "remarkable" do
  version "2.14.2.612"
  sha256 "e70aef4218e4ae27a0df095d32f489aa9d89cc2bb3de1da6ab2989d1bb4c6300"

  url "https://updates-download.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Staging_9fb83f4b-c3d3-4d4d-83ca-8970001ea9a3/40108032/reMarkable-#{version}.dmg",
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
