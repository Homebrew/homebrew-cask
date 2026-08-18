cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "1.0.337"
  sha256  arm:   "bd58770ee2c543460dc0884147e6e04e694761801022fa71bc830e627d2c10f8",
          intel: "dbc12ee78c5deab937a75813499ecc8d05a575509bd2404f9cd3efb8ce52b327"

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
