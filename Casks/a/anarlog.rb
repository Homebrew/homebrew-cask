cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.16"
  sha256 arm:          "c8d652edecbff4d9ca84ec90a68138736e85a7aafcc1c814e74c3c7d87e865a8",
         intel:        "e8a3249c31d0559165266b91451c3d1124c6016c13b6c1378e0131738ed1b361",
         arm64_linux:  "0a9004e8cfcae9b7a01b8c864fef0bf0b433aae9fa5acbcf2ec60992cb51cc1a",
         x86_64_linux: "e81cdedbc791609ed0d26e1fe51369126ef8ba09702e6ea4f305b68100757422"

  on_macos do
    auto_updates true
    depends_on macos: :sequoia

    app "Anarlog.app"

    zap trash: [
      "~/.local/bin/.anarlog-cli",
      "~/.local/bin/anarlog",
      "~/Library/Application Support/anarlog",
      "~/Library/Application Support/com.hyprnote.stable",
      "~/Library/Caches/com.hyprnote.stable",
      "~/Library/HTTPStorages/com.hyprnote.stable",
      "~/Library/Logs/com.hyprnote.stable",
      "~/Library/Preferences/com.hyprnote.stable.plist",
      "~/Library/Saved Application State/com.hyprnote.stable.savedState",
      "~/Library/WebKit/com.hyprnote.stable",
    ]
  end
  on_linux do
    app_image "anarlog-linux-#{arch}.AppImage", target: "Anarlog.AppImage"
  end

  url "https://github.com/fastrepl/anarlog/releases/download/desktop_v#{version}/anarlog-#{os}-#{arch}.#{url_end}"
  name "Anarlog"
  desc "AI notepad for meetings"
  homepage "https://anarlog.so/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
