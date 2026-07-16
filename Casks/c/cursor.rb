cask "cursor" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "3.12.10,24a12dbd9cabf48956ce5bb3dbd234e41385b3df"
  sha256 arm:          "bdc967959c592b134ec38c8ae72e707542f2322f9e3a5f023fa40d707e13f6db",
         intel:        "33d072e5e42cf58114904836b3ac14c4a84be40642aaeaf62d985b1140822d2d",
         arm64_linux:  "737909237a9557712bdf45e42bf74eb133c12487debd0bcd9d4a6bb466013ba6",
         x86_64_linux: "5a546753fcc3598978aabc1ff397703eb92daae1bf1c3eec835fddf2450e840d"

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
