cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  livecheck_os = on_system_conditional macos: "mac", linux: "linux#{on_arch_conditional(arm: "-arm64")}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.36.0,5596661662220288"
  sha256 arm:          "e89b3500d38e045907ba6c8e0aae2560c68f4d0a64aed8d93b2d14b43181d344",
         intel:        "b8de7fa2e3090f8507439a0da43c7f0e8fb69ee333434c07b91d296326db48b2",
         arm64_linux:  "d651ba6ad83a0814cc5dbff45958bc4f455fa39f86455c4fa88a95ef049c481a",
         x86_64_linux: "4d92d52325d843dfec799d3915942c107d0a0a124ca80c3e5dcf66d2e1b511a3"

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
