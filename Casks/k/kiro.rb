cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "1.0.242"
  sha256  arm:   "70e96dcca936a39c014aa48af433ae9e9a63a21d44d4c4804d817b2f430713d2",
          intel: "8e60fdb557cb56d164e448ea95c5a75e4d5c042d2cee29b29c75b935e9b183e9"

  url "https://prod.download.desktop.kiro.dev/releases/stable/darwin-#{arch}/signed/#{version}/kiro-ide-#{version}-stable-darwin-#{arch}.dmg"
  name "kiro"
  desc "Agent-centric IDE with spec-driven development"
  homepage "https://kiro.dev/"

  livecheck do
    url "https://prod.download.desktop.kiro.dev/stable/metadata-dmg-darwin-#{arch}-stable.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        release.dig("updateTo", "version")
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Kiro.app"
  binary "#{appdir}/Kiro.app/Contents/Resources/app/bin/code", target: "kiro"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.kiro.desktop.sfl*",
        "~/Library/Application Support/Kiro",
        "~/Library/Preferences/dev.kiro.desktop.plist",
        "~/Library/Saved Application State/dev.kiro.desktop.savedState",
      ],
      rmdir: "~/.kiro"
end
