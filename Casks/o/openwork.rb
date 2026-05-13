cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.13.8"
  sha256 arm:   "f29d9f249c0fb0a0c64f1a194f042daaf4272fd61f4ea235e1f50f1f622b71bb",
         intel: "59df7c329bbee2af5a3dad0232cf4c11102bb0da87f39a9235bcbba2d390af13"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-mac-#{arch}-#{version}.dmg",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Open source Claude Cowork alternative for teams"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenWork.app"

  zap trash: [
    "~/Library/Application Support/OpenWork",
    "~/Library/Caches/OpenWork",
    "~/Library/Preferences/com.differentai.openwork.plist",
  ]
end
