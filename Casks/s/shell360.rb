cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.18"
  sha256 arm:   "ff728245940f283dbf11d966a2caeb00d29e9c6432943db231cb36c5f5f9fb59",
         intel: "77199ec6a1171e6289b51183d77a96511ffd68db2f38c0912f16fec4f5efeafc"

  url "https://github.com/nashaofu/shell360/releases/download/v#{version}/Shell360_#{version}_#{arch}.dmg"
  name "Shell360"
  desc "Cross-platform SSH & SFTP client"
  homepage "https://github.com/nashaofu/shell360"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Shell360.app"

  zap trash: [
    "~/Library/Application Support/com.nashaofu.shell360",
    "~/Library/Webkit/com.nashaofu.shell360",
  ]
end
