cask "mace" do
  version "0.0.17-alpha"
  sha256 "8f93d0dfd0ca296875643aece368750c527e94f55711af97bd915ac81cb73ed8"

  url "https://github.com/MACE-App/MACE/releases/download/v#{version}/M.A.C.E.V#{version}.dmg"
  name "MACE"
  name "Mac Advanced Compliance Editor"
  desc "Simplify compliance baseline creation, auditing, and management"
  homepage "https://github.com/MACE-App/MACE"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-alpha)?)/i)
  end

  depends_on macos: ">= :sequoia"

  app "MACE.app"

  zap trash: [
    "~/Library/Application Support/MACE",
    "~/Library/Caches/com.mace.app",
    "~/Library/HTTPStorages/com.mace.app",
    "~/Library/Preferences/com.mace.app.plist",
  ]
end
