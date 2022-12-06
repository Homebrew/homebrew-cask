cask "ryujinx" do
  version "1.1.0-macos1"
  sha256 "259d56bbded1940fb227e01d0e8c0b4ad68dc8f8953f19a6414485427d9c7ae9"

  url "https://github.com/Ryujinx/release-channel-macos/releases/download/#{version}/Ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-macos/"
  name "Ryujinx"
  desc "Nintendo Switch Emulator"
  homepage "https://ryujinx.org/"

  app "Ryujinx.app"

  zap trash: [
    "~/Library/Application Support/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
