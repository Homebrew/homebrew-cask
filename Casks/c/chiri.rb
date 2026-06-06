cask "chiri" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "abdc5c6d3e78eb0b07206461fc06c1ad11462a756bb1fd6db6e0d94a1c0f4ea7",
         intel: "afe4688b36eba08764647c159ee4fbc17977765c2e8f9afa46dfc41a6e7f320b"

  url "https://github.com/chiriapp/chiri/releases/download/app-v#{version}/Chiri_#{version}_#{arch}.dmg"
  name "Chiri"
  desc "CalDAV-compatible task management app"
  homepage "https://github.com/chiriapp/chiri"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Chiri.app"

  zap trash: [
    "~/Library/Application Support/moe.sapphic.Chiri",
    "~/Library/Caches/moe.sapphic.chiri",
    "~/Library/Logs/moe.sapphic.chiri",
    "~/Library/Preferences/moe.sapphic.Chiri.plist",
    "~/Library/WebKit/moe.sapphic.Chiri",
  ]
end
