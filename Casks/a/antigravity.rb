cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.16.0,4917332007583744"
  sha256 arm:   "60447b04d61c8feee1ed066939594a9f4a45d6cb1212717d4162b3238a929cbf",
         intel: "da98a4e792546410f5eefc8803395c30f49335f5f214df7f4713857a5736f2cc"

  url "https://storage.googleapis.com/antigravity-public/antigravity-hub/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity.dmg"
  name "Google Antigravity"
  desc "Agent orchestration platform"
  homepage "https://antigravity.google/product/antigravity-2"

  livecheck do
    url "https://antigravity-hub-auto-updater-974169037036.us-central1.run.app/manifest/latest-#{livecheck_arch}-mac.yml?noCache=#{Time.now.to_i}"
    regex(%r{/v?(\d+(?:\.\d+)+)(?:-(\d+)?)/darwin-#{arch}/Antigravity\.(?:dmg|zip)}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Antigravity.app"

  uninstall quit: "com.google.antigravity"

  zap trash: [
    "~/.antigravity",
    "~/.gemini/antigravity",
    "~/Library/Application Support/Antigravity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.antigravity.sfl*",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/Caches/com.google.antigravity.ShipIt",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Logs/Antigravity",
    "~/Library/Preferences/ByHost/com.google.antigravity.ShipIt.*.plist",
    "~/Library/Preferences/com.google.antigravity.plist",
    "~/Library/Saved Application State/com.google.Antigravity.savedState",
  ]
end
