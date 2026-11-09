cask "antigravity-ide" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "2.6.0,5526304964083712"
  sha256 arm:   "7971e71ffaec88f9d9480ea2bcc80aebaee59c0ac06df6f0141ef59046b49c9c",
         intel: "4e13a2073e666ac66b7e25e5a8943938f4bc0a17aea19ac1061dadfa80690e3b"

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
