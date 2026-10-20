cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.31"
  sha256 arm:          "8b9b636ff7045e88f09aa0f7bce05dd546f4a2e7ea6de5b0c847154162935335",
         intel:        "a3481dc9e5bb036b06f46e51c7f76e0eb79563f06a25c7bedcdf32a25c0fa0c8",
         arm64_linux:  "60fdaf83ef13b181a35d9cdba2065859e0fdb50a2aae0f9d49a741025e528fbc",
         x86_64_linux: "9e92b2329b6da8eef2224c2624790ea2ff5bf3b3fca288c021c61a26d2313c6f"

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
