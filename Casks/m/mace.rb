cask "mace" do
  version "0.1.5-beta"
  sha256 "55ab46635e3f1f3e6ff6807267685cb258e567154041c3c6044989a208a903b1"

  url "https://github.com/MACE-App/MACE/releases/download/v#{version}/M.A.C.E.V#{version}.dmg"
  name "MACE"
  name "Mac Advanced Compliance Editor"
  desc "Simplify compliance baseline creation, auditing, and management"
  homepage "https://github.com/MACE-App/MACE"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-](?:alpha|beta|rc).*)?)$/i)
  end

  depends_on macos: :sequoia

  app "MACE.app"

  zap trash: [
    "~/Library/Application Support/MACE",
    "~/Library/Caches/com.mace.app",
    "~/Library/HTTPStorages/com.mace.app",
    "~/Library/Preferences/com.mace.app.plist",
  ]
end
