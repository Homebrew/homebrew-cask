cask "actual" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.9.0"
  sha256 arm:          "d6c01a7fc830d28ef6e476073a1574ae356222cc524c9097e74387017212247b",
         intel:        "73f3b239f1a937c7c5f8ca03504800115a92175796cbe71b043c4358593ed176",
         arm64_linux:  "5375f889ec614665f54a029fa8c7537e511d90a67398fb6e0c3ec8b0b66c86d3",
         x86_64_linux: "fb3e5dbe756bfa614be3d0714c182ac9af977d77749d105535f7068aeeb38171"

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
