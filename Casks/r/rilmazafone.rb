cask "rilmazafone" do
  version "1.0"
  sha256 "59f4cbcbd292e70e5055ef7d7ee3b8ea49b7613896180416f0a74603f1890ffe"

  url "https://github.com/kageroumado/rilmazafone/releases/download/#{version}/Rilmazafone-#{version}.dmg"
  name "Rilmazafone"
  desc "Designer for styled DMG installers"
  homepage "https://github.com/kageroumado/rilmazafone"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Rilmazafone.app"

  zap trash: [
    "~/Library/Application Support/Rilmazafone",
    "~/Library/Preferences/glass.kagerou.rilmazafone.plist",
    "~/Library/Saved Application State/glass.kagerou.rilmazafone.savedState",
  ]
end
