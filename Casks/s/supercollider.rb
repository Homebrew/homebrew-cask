cask "supercollider" do
  version "3.14.1"
  sha256 "ed264b32752d27fc86e506dd0a7eb36de7c19ebce73c3fdf2ed5514f8c73f02e"

  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-universal.dmg",
      verified: "github.com/supercollider/supercollider/"
  name "SuperCollider"
  desc "Server, language, and IDE for sound synthesis and algorithmic composition"
  homepage "https://supercollider.github.io/"

  livecheck do
    url :homepage
    regex(/href=.*?SuperCollider[._-]v?(\d+(?:\.\d+)+)[._-]macOS(?:[._-]universal)?\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "SuperCollider.app"

  zap trash: [
    "~/Library/Application Support/SuperCollider",
    "~/Library/Preferences/net.sourceforge.supercollider.plist",
    "~/Library/Saved Application State/net.sourceforge.supercollider.savedState",
  ]
end
