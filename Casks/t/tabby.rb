cask "tabby" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x86_64", linux: "x64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "1.0.236"
  sha256 arm:          "e98ca6dc69388317a3d33d1a90f575698c767bf3b75440e1b4fbc66a1ff6c0f8",
         intel:        "bf8dc5390f2463bd4516a016819e3401f7794a9bae8dc4d0f35f0fdb814d9d41",
         arm64_linux:  "b8400f307d44d35bed9ce07f25f3962d3c78452f4d127fca3646da139b992a33",
         x86_64_linux: "d02fa73ff1c4020a36bdb681b62fd7b28e2bbace1876ce8d5d5ed1bda8cc716a"

  on_macos do
    depends_on macos: :monterey

    app "Tabby.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.tabby.sfl*",
      "~/Library/Application Support/tabby",
      "~/Library/Caches/org.tabby",
      "~/Library/Caches/org.tabby.ShipIt",
      "~/Library/HTTPStorages/org.tabby",
      "~/Library/Preferences/ByHost/org.tabby.ShipIt.*.plist",
      "~/Library/Preferences/org.tabby.helper.plist",
      "~/Library/Preferences/org.tabby.plist",
      "~/Library/Saved Application State/org.tabby.savedState",
      "~/Library/Services/Open Tabby here.workflow",
      "~/Library/Services/Paste path into Tabby.workflow",
    ]
  end
  on_linux do
    app_image "tabby-#{version}-linux-#{arch}.AppImage", target: "Tabby.AppImage"
  end

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-#{os}-#{arch}.#{url_end}"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
