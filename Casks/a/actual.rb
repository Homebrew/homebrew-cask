cask "actual" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.11.0"
  sha256 arm:          "734a96923e461f5c2741c1a531b353ca249bb2f2ef9f7cb6e9d2b23ddeaf3ba8",
         intel:        "65650b88041f56e9f08e1ce53af4ed60b3da4d7d2f7a12ddd970b8dcb2a01631",
         arm64_linux:  "c250c72c2d74754122fef09a4b4f503c07a872a800e00dcee0ee298a03264df6",
         x86_64_linux: "cc4d555a8bde6f74a3dd0eb4c0dda9c13d44d69806874861d595b51e1e4b2080"

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
