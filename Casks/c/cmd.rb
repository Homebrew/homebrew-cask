cask "cmd" do
  version "0.1.20"
  sha256 "72586c3ecbf82fad04ebcf9a3f93e635526d8f085515d63dbe31796cbad6cc7a"

  url "https://github.com/getcmd-dev/cmd/releases/download/v#{version}/cmd.dmg",
      verified: "github.com/getcmd-dev/cmd/"
  name "cmd"
  desc "AI assistant for development in Xcode"
  homepage "https://getcmd.dev/"

  livecheck do
    url "https://raw.githubusercontent.com/getcmd-dev/cmd/main/app/fastlane/appcast.xml"
    strategy :sparkle do |items|
      items.select { |item| item.channel == "stable" }
           .map(&:short_version)
    end
  end

  depends_on macos: ">= :sequoia"

  app "cmd.app"

  uninstall quit: "dev.getcmd.command"

  zap trash: [
    "~/Library/Application Support/dev.getcmd.command",
    "~/Library/Preferences/dev.getcmd.command.plist",
    "~/Library/Preferences/GP78T2GNXD.dev.getcmd.shared.plist",
  ]
end
