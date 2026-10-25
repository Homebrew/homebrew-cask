cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.32"
  sha256 arm:          "26ab73336e23675a205675f0e1a2a5c3c9172915bedb2a9e1fe247c46f5fac2a",
         intel:        "2dcfb4f15cd0d9ad03bc655ab6def701fea8841b0be2a7365b8de847eb9d7e13",
         arm64_linux:  "c3fc690fd2a257724e8c3384d27f43b573f9f82e85ca509db948dba2ab297d87",
         x86_64_linux: "ed6767d7de080a5d7517ff98836347981db8cc9c7126158d21b29b80f44ffdcc"

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
