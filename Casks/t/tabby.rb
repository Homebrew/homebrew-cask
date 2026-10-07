cask "tabby" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x86_64", linux: "x64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "1.0.238"
  sha256 arm:          "c877d8962f63a67baf40f3400b2d57a195f97d7b3547d7e804adae0e7df6754c",
         intel:        "93935cc99fed5ff76a4cceaef15fdd15802aa7f49e9227f9c883df6eeebee9b4",
         arm64_linux:  "3d8ead2292efef68514432493817f11be0aa1efeb68d81134ba6d2e7e4bc80ef",
         x86_64_linux: "79efb773fef45f97cd3be200a70cb9dc690fcef8d6faa2dbc29679aa8f687d85"

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
