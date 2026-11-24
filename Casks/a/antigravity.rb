cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  livecheck_os = on_system_conditional macos: "mac", linux: "linux#{on_arch_conditional(arm: "-arm64")}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.34.0,5887025308631040"
  sha256 arm:          "385c89149ac0d81a8e16ef032cf76b84957ba7db2e4d28f4a357ddba2e0181c9",
         intel:        "abf80f84f2bff678c9cbefb206c00caafc36e13455d620fc256879a3cdd881ac",
         arm64_linux:  "f9c5fdd124a6f85957d695bbd431ac1aa246250df627d9223d43d77d51b4785a",
         x86_64_linux: "a83c7a31e7a4e58ce17fac2121cbd1533c355a9db8300df621913def6393a56d"

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
