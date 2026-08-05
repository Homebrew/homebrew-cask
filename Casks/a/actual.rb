cask "actual" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.8.0"
  sha256 arm:          "13c469e2f919e5aa1ed04de11ead29e8ec77401606ddd76c0dd7ed779b9abe73",
         intel:        "c38fb280b4056a05d6d2c1cf310609802569f05cf239ce915a60132b8dffcd62",
         arm64_linux:  "48ca421a8cb1949125b6043ac3a4a96b1fa5163e938fc7b6ab619502de1caa69",
         x86_64_linux: "de1297f99f0ee18ef54c1217a905d421efe7056bdd73ec8ce908937032c761dc"

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

  url "https://github.com/actualbudget/actual/releases/download/v#{version}/Actual-#{os}-#{arch}.#{url_end}",
      verified: "github.com/actualbudget/actual/"
  name "Actual"
  desc "Privacy-focused app for managing your finances"
  homepage "https://actualbudget.org/"
end
