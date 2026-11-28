cask "gram" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "Gram", linux: "gram-linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "3.5.2"
  sha256 arm:          "4007fbf84a1c2530afada3d5cae1db6b1f0e349bf07af289187abcaf4589022a",
         intel:        "f14e7be768e4f3f618424e739419d1ea429f85096e48a99691421fac054ed8fd",
         arm64_linux:  "0185af573f5dea292325a7ff47e1223423a5d2dd7d8e1cd9d0b0eba4cb3f7dd2",
         x86_64_linux: "ed285b801f5963fa85a7573820131f42b2f33354b7151d35ffa70fdcc74484bf"

  on_macos do
    app "Gram.app"
    binary "#{appdir}/Gram.app/Contents/MacOS/cli", target: "gram"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.liten.gram.sfl*brew generate-zap",
      "~/Library/Application Support/CrashReporter/gram_*.plist",
      "~/Library/Application Support/Gram",
      "~/Library/Caches/Gram",
      "~/Library/Logs/Gram",
      "~/Library/Preferences/app.liten.Gram.plist",
      "~/Library/Preferences/gram.plist",
      "~/Library/Preferences/se.ziran.Gram.plist",
    ]
  end
  on_linux do
    binary "#{staged_path}/gram.app/bin/gram"
    artifact "gram.app/share/applications/app.liten.Gram.desktop",
             target: "~/.local/share/applications/app.liten.Gram.desktop"

    preflight_steps do
      inreplace "gram.app/share/applications/app.liten.Gram.desktop", "Exec=gram",
                "Exec={{HOMEBREW_PREFIX}}/bin/gram"
      inreplace "gram.app/share/applications/app.liten.Gram.desktop", "Icon=app.liten.Gram",
                "Icon={{staged_path}}/gram.app/share/icons/hicolor/scalable/apps/app.liten.Gram.svg"
    end

    zap trash: [
      "~/.cache/gram",
      "~/.config/gram",
      "~/.local/share/gram",
    ]
  end

  url "https://codeberg.org/GramEditor/gram/releases/download/#{version}/#{os}-#{arch}-#{version}.#{url_end}"
  name "Gram"
  desc "Code editor focused on stability, without AI, subscriptions, or telemetry"
  homepage "https://gram-editor.com/"

  livecheck do
    url "https://codeberg.org/GramEditor/gram.git"
    strategy :git
  end
end
