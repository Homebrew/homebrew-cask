cask "mace" do
  version "1.1.2"
  sha256 "f38e7911e119a98a7260e8da0ca55487b249c66d248b4bcf5cbf85a412027d57"

  url "https://github.com/MACE-App/MACE/releases/download/v#{version}/M.A.C.E.V#{version}.dmg"
  name "MACE"
  name "Mac Advanced Compliance Editor"
  desc "Simplify compliance baseline creation, auditing, and management"
  homepage "https://github.com/MACE-App/MACE"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :sonoma

  app "MACE.app"

  zap trash: [
    "~/Library/Application Support/MACE",
    "~/Library/Caches/com.mace.app",
    "~/Library/HTTPStorages/com.mace.app",
    "~/Library/Preferences/com.mace.app.plist",
  ]
end
