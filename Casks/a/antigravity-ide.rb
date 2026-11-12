cask "antigravity-ide" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.7.0,4507555968450560"
  sha256 arm:   "4cf0776f9667f0afc3e823f80f04f7d978385ae4feda2d327ef6fce977032c64",
         intel: "fb3678d41bff9dc4af9f8c58074b1a9c2e770807cec8c7237c4f0d10f03bbe56"

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity%20IDE.dmg"
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
    "~/.antigravity-ide",
    "~/.antigravity-ide-server",
    "~/.gemini/antigravity-ide",
    "~/Library/Application Support/Antigravity IDE",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.antigravity-ide.sfl*",
    "~/Library/Caches/com.google.antigravity-ide",
    "~/Library/Caches/com.google.antigravity-ide.ShipIt",
    "~/Library/HTTPStorages/com.google.antigravity-ide",
    "~/Library/Preferences/com.google.antigravity-ide.plist",
    "~/Library/Saved Application State/com.google.antigravity-ide.savedState",
  ]
end
