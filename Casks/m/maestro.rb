cask "maestro" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "032c4d0abfc93938635e4d4a8a2a9357d819ca08375c7d42c995d91c180de54f",
         intel: "ac51738861ebf69ebb8cb764ec6867c1d39012372a4a70ce55bb8ee4a1b0f653"

  url "https://github.com/pedramamini/Maestro/releases/download/v#{version}/Maestro-#{version}-#{arch}-mac.dmg",
      verified: "github.com/pedramamini/Maestro/"
  name "Maestro"
  desc "AI agent command center"
  homepage "https://runmaestro.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.maestro.app.sfl*",
    "~/Library/Application Support/maestro",
    "~/Library/Preferences/com.maestro.app.plist",
  ]
end
