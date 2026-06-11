cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.1.4,6481382726303744"
  sha256 arm:   "e9ebd1534944f563e58b84cf67f2225938031c6587f01cc3a3ddfce754016fed",
         intel: "e043c0529301ce3e132faf2237974c0286c60632bf278d6279ae012204926dc5"

  url "https://storage.googleapis.com/antigravity-public/antigravity-hub/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity.dmg",
      verified: "storage.googleapis.com/antigravity-public/antigravity-hub/"
  name "Google Antigravity"
  desc "Agent orchestration platform"
  homepage "https://antigravity.google/product/antigravity-2"

  livecheck do
    url "https://antigravity-hub-auto-updater-974169037036.us-central1.run.app/manifest/latest-#{livecheck_arch}-mac.yml?noCache=#{Time.now.to_i}"
    regex(%r{/v?(\d+(?:\.\d+)+)(?:-(\d+)?)/darwin-#{arch}/Antigravity\.dmg}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Antigravity.app"

  uninstall quit: "com.google.antigravity"

  zap trash: [
    "~/.antigravity/",
    "~/.gemini/antigravity/",
    "~/Library/Application Support/Antigravity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.antigravity.sfl*",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/Caches/com.google.antigravity.ShipIt",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
    "~/Library/Saved Application State/com.google.Antigravity.savedState",
  ]
end
