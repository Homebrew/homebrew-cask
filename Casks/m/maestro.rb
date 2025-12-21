cask "maestro" do
  arch arm: "-arm64"

  version "0.10.0"
  sha256 arm:   "0353629d1a1dee000787f7f70bf647a29fabf7f9a67ac6ed9ff582afecb570aa",
         intel: "21f64e220d481e3d43af5a10a152a422ac91503d6b595e5718740236db5c844f"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}#{arch}.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
