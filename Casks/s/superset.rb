cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.32.0"
  sha256 arm:          "68f6fde02a196f82cc81a8aba2cf96f782286d9475c96ae7f1f27bf3c458b5a1",
         intel:        "91a5677752f06832f01d7ba1bd686729bf37cfc9acff82ca4bcffc9e498c2c14",
         x86_64_linux: "ca489b82ee6445deaebbb98f3ce3f8ed7eb885e11259a70dc2c816988af16a39"

  on_macos do
    depends_on macos: :monterey

    app "Superset.app"

    uninstall quit: "com.superset.desktop"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superset.desktop.sfl*",
      "~/Library/Application Support/Superset",
      "~/Library/Caches/com.superset.desktop",
      "~/Library/HTTPStorages/com.superset.desktop",
      "~/Library/Logs/Superset",
      "~/Library/Preferences/com.superset.desktop.plist",
      "~/Library/Saved Application State/com.superset.desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superset-#{version}-x86_64.AppImage", target: "Superset.AppImage"
  end

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/#{os}-#{version}#{arch}#{url_end}"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
