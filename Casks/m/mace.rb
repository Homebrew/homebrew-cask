cask "mace" do
  version "0.0.9-alpha"
  sha256 "a48fa51169c3b6c198162ea5c69655fec64668861de18878dc3b44b6336194d3"

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
