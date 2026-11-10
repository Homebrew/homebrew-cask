cask "gram" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "Gram", linux: "gram-linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "3.5.0"
  sha256 arm:          "594f99587dc6e2203a97b3029c8c0fdafe5393150f2fa185e6915a389b1665c2",
         intel:        "88e69eb1519941c630d3355539c30c22bab8bc850722e1cd4b74fc0b01e975ee",
         arm64_linux:  "51fa6b44454837a7459ff8d85342cf01f9e70d665d62ecc348b46008f224b447",
         x86_64_linux: "8312953038dda492086db519d2a8fcfd97b8e1b2c0d7a371c0e30259f2259e0e"

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
