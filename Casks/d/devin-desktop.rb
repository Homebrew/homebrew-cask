cask "devin-desktop" do
  arch arm: "arm64", intel: "x64"

  version "3.2.28,ffdb8a9ab872eb77056ecc53dc0129a9a6626848"
  sha256 arm:   "208c2bfe9183e3bf8b5b2378e1ddcae75c2f1b3c8a8a8aed6ca3e196bcf0573d",
         intel: "b28e552d92b4a53eed94f19da2712a793679813851e8e63d61309076cf281cf2"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/stable/#{version.csv.second}/Devin-darwin-#{arch}-#{version.csv.first}.dmg",
      verified: "windsurf-stable.codeiumdata.com/"
  name "Devin Desktop"
  desc "Agentic IDE with AI agent command center"
  homepage "https://devin.ai/desktop"

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
