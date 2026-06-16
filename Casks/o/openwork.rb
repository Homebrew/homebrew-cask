cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "00b784cf8507e270281e8cec4617326ee02457f30ac395b0a585e935ca61dc3b",
         intel: "3750b4517e37d890d9358f67dd189b551866beb140b68f366ce1224d79deca7d"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-mac-#{arch}-#{version}.dmg",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "OpenWork.app"

  zap trash: [
    "~/Library/Application Support/OpenWork",
    "~/Library/Caches/OpenWork",
    "~/Library/Preferences/com.differentai.openwork.plist",
  ]
end
