cask "shell360" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.13"
  sha256 arm:   "EF21F976BE57858705E8EE80F5A1C6D6306F798652FF447FB85B8422D7BCCBDE",
         intel: "67C505A18553EB34C57D51EF3F521A0631BBCF3CF301F260B4BFE4821636D0CE"

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
