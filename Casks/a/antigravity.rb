cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  livecheck_os = on_system_conditional macos: "mac", linux: "linux#{on_arch_conditional(arm: "-arm64")}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.35.0,6394266482769920"
  sha256 arm:          "51105bc2227e41379c42358d01139c6eb9b66d63eee75de10f717208e8f1c672",
         intel:        "cfcacbef2477327bc41606f1626a52a4b3b8d15204fcf80dbbe0a58214204968",
         arm64_linux:  "2f2e4fabc2b669dbcf8d5c77025e4dbbe4349e3eafeaae947561c29a2119caf8",
         x86_64_linux: "953449419c399a798f9f332821dc094d89aad2b445e4019be7a5976266e74be3"

  on_macos do
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
  on_linux do
    app_image "Antigravity.AppImage"

    zap trash: [
      "~/.cache/antigravity",
      "~/.cache/antigravity-updater",
      "~/.config/Antigravity",
      "~/.gemini/antigravity",
    ]
  end

  url "https://storage.googleapis.com/antigravity-public/antigravity-hub/#{version.csv.first}-#{version.csv.second}/#{os}-#{arch}/Antigravity.#{url_end}"
  name "Google Antigravity"
  desc "Agent orchestration platform"
  homepage "https://antigravity.google/product/antigravity-2"

  livecheck do
    url "https://antigravity-hub-auto-updater-974169037036.us-central1.run.app/manifest/latest-#{livecheck_arch}-#{livecheck_os}.yml?noCache=#{Time.now.to_i}"
    regex(%r{/v?(\d+(?:\.\d+)+)(?:-(\d+)?)/#{os}-#{arch}/Antigravity\.(?:AppImage|dmg|zip)}i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match.values_at(1, 2).compact_blank.join(",")
      end
    end
  end

  auto_updates true
end
