cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "1.5.49"
  sha256  arm:   "b13b50ef7c800a4c15a3d1bad14e8da44c298e0097ef008ddeb4c1acc309513f",
          intel: "fa9c3fe2fdbd2082e2f692a0da8ad739ad0a47c343f6622c4c5e97ffe3a8a458"

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
