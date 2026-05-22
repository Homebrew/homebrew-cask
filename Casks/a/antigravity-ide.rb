cask "antigravity-ide" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.0.3,6242596486512640"
  sha256 arm:   "e7e275f8ef16bec429b064bb85a1f78b78b459ea44cc7f72fb5b4a3f27765e89",
         intel: "1689f7b7d54df3b41c89d3a60e8891bb86b25a9f014afaf5631a206eb661a701"

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity%20IDE.dmg",
      verified: "edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/"
  name "Google Antigravity IDE"
  desc "AI Coding Agent IDE"
  homepage "https://antigravity.google/product/antigravity-ide"

  livecheck do
    url "https://antigravity-ide-auto-updater-974169037036.us-central1.run.app/api/update/darwin#{livecheck_arch}/stable/latest"
    regex(%r{/stable/([^/]+)/}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]&.tr("-", ",").to_s
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Antigravity IDE.app"
  binary "#{appdir}/Antigravity IDE.app/Contents/Resources/app/bin/antigravity-ide", target: "agy-ide"
  binary "#{appdir}/Antigravity IDE.app/Contents/Resources/app/bin/antigravity-ide"

  uninstall quit: "com.google.antigravity-ide"

  zap trash: [
    "~/.antigravity-ide-server/",
    "~/.antigravity-ide/",
    "~/.gemini/antigravity-ide/",
    "~/Library/Application Support/Antigravity IDE",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.antigravity-ide.sfl*",
    "~/Library/Caches/com.google.antigravity-ide",
    "~/Library/Caches/com.google.antigravity-ide.ShipIt",
    "~/Library/HTTPStorages/com.google.antigravity-ide",
    "~/Library/Preferences/com.google.antigravity-ide.plist",
    "~/Library/Saved Application State/com.google.antigravity-ide.savedState",
  ]
end
