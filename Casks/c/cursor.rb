cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "3.10.11,4ef9fe3d055f8c4523179a090f14eb835bc3c94e"
  sha256 arm:          "03337271ef9ea01669add55893871e9659a84d5f1d0cbfe09b0c9484b4e5a115",
         intel:        "406df63caa18d6aa0bcce1cb3d986a47c5a195ca327fd7e39c2661dde16671d6",
         arm64_linux:  "a0b1bcce73b50c69b6e8d52c1e1da66ea54251ec75e752bde15b7b0944a9f4af",
         x86_64_linux: "1fe3802581f7d309db8fcd434b6d327fa3ec5e52922440007f6c96ed1abe777d"

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
    regex(%r{/production/(\h+)/#{os}/#{arch}/Cursor[._-]#{os}[._-]#{arch}\.#{url_end}}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{json["name"]},#{match[1]}"
    end
  end
end
