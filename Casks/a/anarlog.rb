cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.26"
  sha256 arm:          "36e8a2889b9db0ee7628a803131b98406e8f96460d81827d890bed7eeafadc0c",
         intel:        "8ddc82cb7dec73536d37a8a44c85febf9fec4b9bd966a793eb21bae27d9bcc11",
         arm64_linux:  "ea637b6256132904c685bda57cdb82a2a7762596b1b225d89195d6f73e2913a8",
         x86_64_linux: "c4509c84ae7e9ddb95522f8e4e2da8f8a3e7b414c0af6fabda478c2f68dfce9a"

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
