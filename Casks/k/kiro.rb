cask "kiro" do
  arch arm: "arm64", intel: "x64"

  version "1.2.37"
  sha256  arm:   "fe62469127df8e85674f127acd30ef07c70d56b33e94a19cc4bbf00c3d111868",
          intel: "b9fadf501d09cc294b8dfeede4339ff7a93992590257d3b9c4ae01f6ff8b396a"

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

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.kiro.desktop.sfl*",
        "~/Library/Application Support/Kiro",
        "~/Library/Preferences/dev.kiro.desktop.plist",
        "~/Library/Saved Application State/dev.kiro.desktop.savedState",
      ],
      rmdir: "~/.kiro"
end
