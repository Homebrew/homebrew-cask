cask "actual" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.10.0"
  sha256 arm:          "db3df92ab6febc0c4c682df7dd2c8b74dd4f47cc7035ca154d98ff883b318cfe",
         intel:        "80f478a19085540c4b0f24e38b404111b019e5596c9590d53e00b8a11ba50e73",
         arm64_linux:  "b1c4f0792af5273acd81bc6b3ec05e6530f5f3b408a2c3de597ee9622394c17d",
         x86_64_linux: "21455ba3bfb985e969ed2b5aeebde8a0aeec8836351813c07ea63267e1f47b7b"

  on_macos do
    depends_on macos: :monterey

    app "Actual.app"

    zap trash: [
      "~/Documents/Actual",
      "~/Library/Application Support/Actual",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.actualbudget.actual.sfl*",
      "~/Library/Logs/Actual",
      "~/Library/Preferences/com.actualbudget.actual.plist",
      "~/Library/Saved Application State/com.actualbudget.actual.savedState",
    ]
  end
  on_linux do
    app_image "Actual-linux-#{arch}.AppImage", target: "Actual.AppImage"
  end

  url "https://github.com/actualbudget/actual/releases/download/v#{version}/Actual-#{os}-#{arch}.#{url_end}"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.org/"
end
