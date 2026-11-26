cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  livecheck_os = on_system_conditional macos: "mac", linux: "linux#{on_arch_conditional(arm: "-arm64")}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.35.2,4585983447007232"
  sha256 arm:          "33b2123f12dee526b2d2d6bd7fe622ff328e697f51ece8c606ccdffe1aadd038",
         intel:        "ec104570bc9815d9149df5ded020075a5f939d6f75022ad13d587320856a3775",
         arm64_linux:  "4ffe15a59724d01bc50d99166cab3d57b68dae304bba05b40ebe2b3382ec4980",
         x86_64_linux: "96c9c1ef899ce433bae1cfe72034ff5408afcc3a812ba46bdde09385fcc215aa"

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
