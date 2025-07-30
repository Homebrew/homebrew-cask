cask "spectrolite" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "6312b8f191d11eae5673117cd582d9f358007adea325e2a20f09e300853389eb",
         intel: "0f994fc7aa355095edb2d474127aea459217cac95f2f0c7047e56e7100924bd8"

  url "https://spectrolite.app/downloads/Spectrolite-#{version}-#{arch}.dmg"
  name "Spectrolite"
  desc "App for making risograph prints"
  homepage "https://spectrolite.app/"

  livecheck do
    url "https://d398dq9v5f85fz.cloudfront.net/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Spectrolite.app"

  zap trash: [
    "~/Library/Application Support/spectrolite",
    "~/Library/Logs/Spectrolite",
    "~/Library/Preferences/com.electron.spectrolite.plist",
    "~/Library/Saved Application State/com.electron.spectrolite.savedState",
  ]
end
