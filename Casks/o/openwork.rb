cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "8d0676859662e9cf0b9576dfa630073ba7d643c70472eb3af1f112b1fd68d54c",
         intel: "75edcbe74e2aba91bfaf226ed9a60f041c3fc5dc04dd665781bce00a5a39e848"

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
