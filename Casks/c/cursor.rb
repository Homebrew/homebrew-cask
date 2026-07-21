cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "3.12.29,cd1c87ff9b66021918fb9731605f8d1d5fd2f0b2"
  sha256 arm:          "255edb36168774fe63507535231e1c1871bcd74f767203abda560179293d75ed",
         intel:        "9bdedac1469177605143ec727c0ab21871c8d6738d67cd337e8d4fdae1aeca04",
         arm64_linux:  "971fe6d0748021fca3a54d84169ed9fe3f1096eaee4b03caa10c5f51d8985ddd",
         x86_64_linux: "8fd8748d03011fb9d4da24550c99d61e8b55f35adb6ba5cf84d8f7037950a2cf"

  url_end = on_system_conditional linux: "AppImage", macos: "zip"

  on_macos do
    url "https://downloads.cursor.com/production/#{version.csv.second}/#{os}/#{arch}/Cursor-darwin-#{arch}.#{url_end}"

    auto_updates true
    depends_on macos: :monterey

    app "Cursor.app"
    binary "#{appdir}/Cursor.app/Contents/Resources/app/bin/code", target: "cursor"

    zap trash: [
      "~/.cursor",
      "~/.cursor-tutor",
      "~/Library/Application Support/Caches/cursor-updater",
      "~/Library/Application Support/Cursor",
      "~/Library/Caches/com.todesktop.*",
      "~/Library/Caches/com.todesktop.*.ShipIt",
      "~/Library/HTTPStorages/com.todesktop.*",
      "~/Library/Logs/Cursor",
      "~/Library/Preferences/ByHost/com.todesktop.*.ShipIt.*.plist",
      "~/Library/Preferences/com.todesktop.*.plist",
      "~/Library/Saved Application State/com.todesktop.*.savedState",
      "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
    ]
  end

  on_linux do
    artifact_arch = on_arch_conditional arm: "aarch64", intel: "x86_64"

    url "https://downloads.cursor.com/production/#{version.csv.second}/#{os}/#{arch}/Cursor-#{version.csv.first}-#{artifact_arch}.#{url_end}"

    app_image "Cursor-#{version.csv.first}-#{artifact_arch}.AppImage", target: "Cursor.AppImage"
  end

  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.com/"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/#{os}-#{arch}/cursor/0.0.0/stable"
    regex(%r{/production/(\h+)/}i)
    strategy :json do |json, regex|
      ver = json["name"] || json["version"] || json["productVersion"]
      next unless ver

      match = json["url"]&.match(regex)
      next if match.blank?

      "#{ver},#{match[1]}"
    end
  end
end
