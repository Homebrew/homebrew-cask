cask "ryujinx" do
  version "1.1.0"
  sha256 "259d56bbded1940fb227e01d0e8c0b4ad68dc8f8953f19a6414485427d9c7ae9"

  url "https://github.com/Ryujinx/release-channel-macos/releases/download/#{version}-macos1/Ryujinx-#{version}-macos1-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-macos/"
  name "Ryujinx"
  desc "Experimental Nintendo Switch Emulator written in C#"
  homepage "https://ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Ryujinx.app"

  zap trash: [
    "~/.config/Ryujinx",
    "~/Library/Application Support/CrashReporter/Ryujinx_*.plist",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
