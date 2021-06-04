cask "mumemo" do
  version "0.6.2"
  sha256 "da1169fe8f71cdd5b0560f4ac830c6511c152482fa7f95173d09755140e147be"

  url "https://github.com/azu/mumemo/releases/download/v#{version}/mumemo-#{version}.dmg"
  name "mumemo"
  desc "Screenshot-driven note application"
  homepage "https://github.com/azu/mumemo"

  app "mumemo.app"

  zap trash: [
    "~/Library/Application Support/mumemo",
    "~/Library/Logs/mumemo",
    "~/Library/Preferences/info.efcl.mumemo.plist",
    "~/Library/Saved Application State/info.efcl.mumemo.savedState",
  ]
end
