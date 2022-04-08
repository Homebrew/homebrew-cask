cask "quicksilver" do
  version "2.0.2"
  sha256 "23a5b5e82d8802ad8e91e450994a69839133a73b5a26bdfdbf8859423d9ac664"

  url "https://github.com/quicksilver/Quicksilver/releases/download/v#{version}/Quicksilver.#{version}.dmg",
      verified: "github.com/quicksilver/Quicksilver"
  name "Quicksilver"
  desc "Productivity application"
  homepage "https://qsapp.com/"

  livecheck do
    url :stable
    strategy :github_latest
  end

  auto_updates true

  app "Quicksilver.app"

  zap trash: [
    "~/Library/Preferences/com.blacktree.Quicksilver.plist",
    "~/Library/Application Support/Quicksilver",
  ]
end
