cask "devin-desktop" do
  arch arm: "arm64", intel: "x64"

  version "3.9.19,e2b252e21dd5cdfd88fce58f49477260e90294bc"
  sha256 arm:   "6d1b779fde24388b4e336f27b62439ed6784080cc0cc9464072e9425da7bdb4f",
         intel: "b99306cc44a9bc1a56401b0909c1d66d6c893b7ae9abe3cd1f70033e9eb3e2e4"

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
