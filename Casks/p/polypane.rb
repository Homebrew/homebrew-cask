cask "polypane" do
  arch arm: "-arm64"
  file_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "32.0.0"
  sha256 arm:          "5f8939f508a3197cff4058d2906a038f3b7bf9c20c63e16e7542294f70d4c135",
         intel:        "04ba3b0247d4d44979c67c43a242b65cb0d9af8b82ac4d302ca905c867ab1f83",
         arm64_linux:  "3d87f8ffcb81c931ca966de758944d59f145e62830cd1b7dc55e472a43b1a911",
         x86_64_linux: "8742c4e362cff9aad14d98edf7eecb3c179ccfe5bb5e1a9e6ea4101adb8b9c10"

  on_macos do
    depends_on macos: :ventura

    app "Polypane.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.firstversionist.polypane.sfl*",
      "~/Library/Application Support/Polypane",
      "~/Library/Caches/com.firstversionist.polypane",
      "~/Library/Caches/com.firstversionist.polypane.ShipIt",
      "~/Library/Logs/Polypane",
      "~/Library/Preferences/com.firstversionist.polypane.plist",
      "~/Library/Saved Application State/com.firstversionist.polypane.savedState",
    ]
  end
  on_linux do
    app_image "Polypane-#{version}#{arch}.AppImage", target: "Polypane.AppImage"

    zap trash: "~/.config/Polypane"
  end

  url "https://github.com/firstversionist/polypane/releases/download/v#{version}/Polypane-#{version}#{arch}.#{file_ext}"
  name "Polypane"
  desc "Browser for ambitious developers"
  homepage "https://polypane.app/"
end
