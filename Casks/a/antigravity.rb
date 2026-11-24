cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  livecheck_os = on_system_conditional macos: "mac", linux: "linux#{on_arch_conditional(arm: "-arm64")}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.35.1,4615540875067392"
  sha256 arm:          "be9694a3baff68c4126c4e298990d8f33309a471f6941936c377989602d163a6",
         intel:        "f6725117031565ac345ebd0a4768e100c435f78d366c2044038250384514c2d1",
         arm64_linux:  "961a0ef3de68c5d3ba1be7271a4cdc0c8a80599443d70fa48c4c74d06b41014e",
         x86_64_linux: "7025faf68d4ce7de3772c1f1d3939659e95391bdda08b8013f3178eff123ba41"

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
