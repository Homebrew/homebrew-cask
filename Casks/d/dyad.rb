cask "dyad" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "f643493f38369ce4517669ac12e88dc2cab86d92f5c67168e905d344edc1e04a",
         intel: "351591fdb223fe4bc10a2d04b5e75a5fa25af89a4822a55a044fa11a09ceffb5"

  url "https://github.com/dyad-sh/dyad/releases/download/v#{version}/dyad-darwin-#{arch}-#{version}.zip",
      verified: "github.com/dyad-sh/dyad/"
  name "Dyad"
  desc "AI-powered app builder"
  homepage "https://dyad.sh/"

  livecheck do
    url "https://api.dyad.sh/v1/update/stable/dyad-sh/dyad/darwin-#{arch}/0.0.0"
    regex(%r{/v?(\d+(?:\.\d+)+)/}i)
    strategy :json do |json|
      json["url"]&.[](regex, 1)
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "dyad.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.dyad.sfl*",
    "~/Library/Application Support/dyad",
    "~/Library/Caches/com.electron.dyad",
    "~/Library/Caches/com.electron.dyad.ShipIt",
    "~/Library/HTTPStorages/com.electron.dyad",
    "~/Library/Logs/dyad",
    "~/Library/Preferences/com.electron.dyad.plist",
  ], rmdir: "~/dyad-apps"
end
