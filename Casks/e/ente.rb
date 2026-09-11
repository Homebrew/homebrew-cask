cask "ente" do
  version "1.7.29"
  sha256 "9fd4e6514129188bbefef9b8ac0c4d720a72ed039f9584f5ccec7a7f30d9a850"

  url "https://github.com/ente-io/photos-desktop/releases/download/v#{version}/ente-#{version}-universal.dmg"
  name "Ente"
  desc "Desktop client for Ente Photos"
  homepage "https://ente.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ente.app"

  zap trash: [
    "~/Library/Application Support/ente",
    "~/Library/Logs/ente",
    "~/Library/Preferences/io.ente.bhari-frame.helper.plist",
    "~/Library/Preferences/io.ente.bhari-frame.plist",
    "~/Library/Saved Application State/io.ente.bhari-frame.savedState",
  ]
end
