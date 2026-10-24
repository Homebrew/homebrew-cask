cask "gram" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "Gram", linux: "gram-linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "3.4.1"
  sha256 arm:          "fe694f5fd2415cfbfb612029bb8daf7c99969bd6da7b8fd3bad89b9e155d3d7c",
         intel:        "7b8de6d0bfab9eb554108325c816c0a631e420f423a859e23c1e1a8d95a5b2a8",
         arm64_linux:  "eb83ea62b73ab26301e19d21c6a2693183314380146fb818e4dcdc4bf44c6b1e",
         x86_64_linux: "6a92eabb61ced515eed491e41cfd67ec7b9117cc69c082c588c454954cf3e143"

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
