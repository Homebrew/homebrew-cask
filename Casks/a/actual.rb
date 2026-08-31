cask "actual" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.8.1"
  sha256 arm:          "b605b3ac05b17f49b726da3574a0788db3a3b1a29efa4eac0f4f12b0b7b01402",
         intel:        "1da3b3b5e1914305c24976e03ce6225a179c9988faabc0193c2ab1b5aea32bb3",
         arm64_linux:  "77843187fadde2b68e0682a3991db0512c4e2dfb0c1e71de2fb9929694603934",
         x86_64_linux: "7c6998c8420c163eabe0985ad01309476849d9c2a3a3d0c7c87658ef6ce3ace6"

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
