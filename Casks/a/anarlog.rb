cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.27"
  sha256 arm:          "bf6be80833e34d0ede68cefa5e330ba3181b7dff51f24968d12b9c730f4e7f90",
         intel:        "4fc8e652e56e56f67e20d15d1fd3ad3b04ff653d340bc458b27d8672c83c8a32",
         arm64_linux:  "855e75bee4b9bd55f620acd0c66a511ebc21fe9d21257fd1355b87fe8d29efff",
         x86_64_linux: "50c6c7bb1eb3381da47f7fa541cab91b47822c06b645d23abfe7a114da77986d"

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
