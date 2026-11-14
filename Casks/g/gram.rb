cask "gram" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "Gram", linux: "gram-linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "3.5.1"
  sha256 arm:          "b0a8316a7e14fb470048ae08382dfe87242c182cc9fe24505cd75c8d6cdf9c5c",
         intel:        "29fe75ff3313b21e8adf3442b6fa614e81c755b651c625730e61506b6ec5fc4d",
         arm64_linux:  "c451fcde75eea020463e618801bd23c1ab214d205fadcd90c2881db9b68ad4ac",
         x86_64_linux: "943154e1cf8b685b9e26b63ef13c9fb4d9bb0d6c04bf163711c73b6434697458"

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
