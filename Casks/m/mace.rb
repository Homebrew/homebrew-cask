cask "mace" do
  version "0.1.6-beta"
  sha256 "614bbf147bdf7664de781a7be6ea301210068cd78b12dd9f6d19e036b2c868f8"

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
