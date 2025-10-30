cask "cmd" do
  version "0.1.33"
  sha256 "7a93e6f8e00bf713854b87d0d60209f8766482883872a91239975f78808a9f94"

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
