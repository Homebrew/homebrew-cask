cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.35"
  sha256 arm:          "050e55b4df5f7bd72687e9ac32b2e543979e9e9855a94971172604b489413f29",
         intel:        "de4cfe6f8d9b1d66148afcc6487bd27ad2a467db5d364b53fc82dba9b0979065",
         arm64_linux:  "001dafcb9431df728f81a7d50bf8f1baa7da8173de3d9b80090c99b9c401c771",
         x86_64_linux: "4358a26fa8923eea2ab59d609d39d949f1ffbd00366dddd9219fe4890763d88f"

  on_macos do
    auto_updates true
    depends_on macos: :sequoia

    app "Anarlog.app"

    uninstall quit: "com.hyprnote.stable"

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

    zap trash: [
      "~/.cache/char",
      "~/.cache/com.hyprnote.stable",
      "~/.local/bin/.anarlog-cli",
      "~/.local/bin/anarlog",
      "~/.local/share/anarlog",
      "~/.local/share/applications/anarlog-handler.desktop",
      "~/.local/share/com.hyprnote.stable",
    ]
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
