cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:   "7daa50841e90e478c583e4181c18ab92b47036e526962a0cea730f34175429c5",
         intel: "edd2e827d9859b3313ea07ca2fb66649f00deab271226517180a303418153128"

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
