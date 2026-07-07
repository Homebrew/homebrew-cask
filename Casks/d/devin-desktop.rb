cask "devin-desktop" do
  arch arm: "arm64", intel: "x64"

  version "3.4.27,0d4bf12ed4a7597cb8ae9016fe8474468aad98a2"
  sha256 arm:   "0d15df47d926a46d4afb3851433384ac8e4bbab3b47757ed0ed0881607b45303",
         intel: "874f1879dd9dd298f1d2f72546028ba8bd001c187818a30e221b51325f2201ff"

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
