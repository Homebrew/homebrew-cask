cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "1.4.236"
  sha256  arm:   "cdf7df40c1df1062ea0263206a766e8cc683168bfd0f84cd372015c1436c44b3",
          intel: "08daa177095aaeac0cdda20f6a3da9efd56a6704e8b767b025bc9d96acf57663"

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
  depends_on macos: :ventura

  app "Kiro.app"
  binary "#{appdir}/Kiro.app/Contents/Resources/app/bin/code", target: "kiro"

  uninstall quit: "dev.kiro.desktop"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.kiro.desktop.sfl*",
        "~/Library/Application Support/Kiro",
        "~/Library/Preferences/dev.kiro.desktop.plist",
        "~/Library/Saved Application State/dev.kiro.desktop.savedState",
      ],
      rmdir: "~/.kiro"
end
