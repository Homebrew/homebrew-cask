cask "cmd" do
  version "0.1.34"
  sha256 "106ad67a846ba1ca4f11db81c2ccf7724c9d8cb42828f11126ca015ba0535dd2"

  url "https://github.com/getcmd-dev/cmd/releases/download/v#{version}/cmd.dmg",
      verified: "github.com/getcmd-dev/cmd/"
  name "cmd"
  desc "AI assistant for development in Xcode"
  homepage "https://getcmd.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/getcmd-dev/cmd/main/app/fastlane/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "stable" }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "cmd.app"

  uninstall quit: "dev.getcmd.command"

  zap trash: [
    "~/Library/Application Support/dev.getcmd.command",
    "~/Library/Preferences/dev.getcmd.command.plist",
    "~/Library/Preferences/GP78T2GNXD.dev.getcmd.shared.plist",
  ]
end
