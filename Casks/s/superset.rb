cask "superset" do
  arch arm: "-arm64"

  version "1.9.7"
  sha256 arm:   "a1550b2687fe6abb1f4b6c176b8a646b1fac4d9cdb15b5f2d5ea78cf83d42f65",
         intel: "cef45fb9825c0ab286bc449cf399928ed72a4ef8ae9cef5dcf8043279e2f64b9"

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/Superset-#{version}#{arch}.dmg",
      verified: "github.com/superset-sh/superset/"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Superset.app"

  zap trash: [
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
