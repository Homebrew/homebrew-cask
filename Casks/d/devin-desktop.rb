cask "devin-desktop" do
  arch arm: "arm64", intel: "x64"

  version "3.10.35,dfa4a2d639b8a05ab72387c12f1aafca1b4c3cb9"
  sha256 arm:   "49e6fd9a550e83acc38ede9eaf5c03fcff1af2df3389a647a31892d42736b7fc",
         intel: "26c914dfe62ba30981586fbfd6ef7599ce51112830aae3c8d02a4466ce1cc8d3"

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
