cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.36"
  sha256 arm:          "1f89837d55f21e1da042ac1f986b297a87de10371548a53266ff5aea902a4862",
         intel:        "6d34a822c8332027f703a747806da24e281cd91840ea6963e493d4a2a4eb2ec9",
         arm64_linux:  "886c78a220d5468a230e2b5cb492cd0f5ae1f5486aabbfc4ba5d1846cb820380",
         x86_64_linux: "2f09c72eda5cdfb5458ce95040e269a848850c249c4afb072c15cec6729c8266"

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
