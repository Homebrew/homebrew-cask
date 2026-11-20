cask "emdash" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "1.2.13"
  sha256 arm:          "8d211435f224cff658e8db3dabc71290c8b274c0a2c000757d923c523ff9cefb",
         intel:        "29fb34b554b7e17ebb0fd63b4528c2195e4f067611092ec8ffbd69ec144040f6",
         arm64_linux:  "88401c4379a4451c2a803c77fc8aedd60fdf74c29ac029a3769dba7753b3dae9",
         x86_64_linux: "c807c9879c1920aa4369705ac91d23be4f8ec09ef79a1503dc6e43af4d502220"

  on_macos do
    depends_on macos: :monterey

    app "Emdash.app"

    uninstall quit: "com.emdash.stable"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.stable.sfl*",
      "~/Library/Application Support/Emdash",
      "~/Library/Logs/emdash",
      "~/Library/Preferences/com.emdash.plist",
      "~/Library/Preferences/com.emdash.stable.plist",
      "~/Library/Saved Application State/com.emdash.savedState",
    ]
  end
  on_linux do
    app_image "emdash-#{arch}.AppImage", target: "Emdash.AppImage"

    zap trash: "~/.config/emdash"
  end

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.#{os}"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
