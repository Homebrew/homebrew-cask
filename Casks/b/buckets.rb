cask "buckets" do
  arch arm: "arm64", intel: "amd64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  url_mid = on_system_conditional linux: "linux-latest-"

  version "0.80.0"
  sha256 arm:          "2d7ec7a7d5cf1845c9f2c7adfb37426c7886ae10abec4cca7545cc022277b9c9",
         intel:        "54528d1c01c90cc514bd7d534f541f453d3796676991846a04a3a971bfb76a5d",
         arm64_linux:  "42ed981c6bb410f15a5e3954c09ece9fcb4e03daea5ff93c527c000ee471a149",
         x86_64_linux: "0cae7e553e3e382709e016efe861ace91df7d8632c0f580d126733d226896f57"

  on_macos do
    app "Buckets.app"

    zap trash: [
      "~/Library/Application Support/Buckets",
      "~/Library/Application Support/Caches/buckets-updater",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.buckets.application.sfl*",
      "~/Library/Caches/com.github.buckets.application",
      "~/Library/Caches/com.github.buckets.application.ShipIt",
      "~/Library/HTTPStorages/com.github.buckets.application",
      "~/Library/Logs/Buckets",
      "~/Library/Logs/DiagnosticReports/Buckets-*.ips",
      "~/Library/Preferences/ByHost/com.github.buckets.application.ShipIt.*.plist",
      "~/Library/Preferences/com.github.buckets.application.plist",
      "~/Library/Saved Application State/com.github.buckets.application.savedState,",
    ]
  end
  on_linux do
    app_image "Buckets-linux-latest-#{arch}-#{version}.AppImage", target: "Buckets.AppImage"
  end

  url "https://github.com/buckets/application/releases/download/v#{version}/Buckets-#{url_mid}#{arch}-#{version}.#{url_end}"
  name "Buckets"
  desc "Budgeting tool"
  homepage "https://www.budgetwithbuckets.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
