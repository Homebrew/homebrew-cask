cask "devin-desktop" do
  arch arm: "arm64", intel: "x64"

  version "3.11.216,d70b4713dfeaf856a4d8a35b35eac0c86e07af07"
  sha256 arm:   "b19fe4092149e57ce1811bbfdf0ac6e63e08f98528f694732ce87274143955fb",
         intel: "c106783a96debb8e1013ddbe7c1567d71d3275a0fef3c0fd57529bd503e94007"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/stable/#{version.csv.second}/Devin-darwin-#{arch}-#{version.csv.first}.dmg"
  name "Devin Desktop"
  desc "Agentic IDE with AI agent command center"
  homepage "https://devin.ai/desktop", browsed: "2026-09-07"

  livecheck do
    url "https://windsurf-stable.codeium.com/api/update/darwin-#{arch}-dmg/stable/latest"
    strategy :json do |json|
      version = json["windsurfVersion"]
      hash = json["version"]
      next if version.blank? || hash.blank?

      "#{version},#{hash}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Devin.app"
  binary "#{appdir}/Devin.app/Contents/Resources/app/bin/devin-desktop"

  uninstall launchctl: "com.exafunction.windsurf.ShipIt",
            quit:      "com.exafunction.windsurf"

  zap trash: [
        "~/.devin",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.exafunction.windsurf.sfl*",
        "~/Library/Application Support/Devin",
        "~/Library/Caches/com.exafunction.windsurf",
        "~/Library/Caches/com.exafunction.windsurf.ShipIt",
        "~/Library/HTTPStorages/com.exafunction.windsurf",
        "~/Library/Preferences/com.exafunction.windsurf.plist",
      ],
      rmdir: "~/.codeium/windsurf"
end
