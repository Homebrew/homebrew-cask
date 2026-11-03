cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.2.1"
  sha256 arm:          "e7962be7271229dd4a37c39c0a19a90105a0a4c97a54f1c1c8c0194a3c3632ac",
         intel:        "ed3c26e36de147a1a0f204f3497b13f6a359ad27ed7fd807f11b390ffff35093",
         arm64_linux:  "95a5235db718ea05ab1d340f5558e7cd4f4b9f1973f2bfd64ed34c934ff254cb",
         x86_64_linux: "91005a9bb2f77d874348da1c7ea054758e518f4525baf1e80f5ed65aa081981c"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

    app "Beekeeper Studio.app"

    zap trash: [
      "~/Library/Application Support/beekeeper-studio",
      "~/Library/Application Support/Caches/beekeeper-studio-updater",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.beekeeperstudio.desktop.sfl*",
      "~/Library/Caches/io.beekeeperstudio.desktop",
      "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
      "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
      "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
      "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
    ]
  end
  on_linux do
    app_image "Beekeeper-Studio-#{version}#{arch}.AppImage", target: "Beekeeper Studio.AppImage"

    zap trash: [
      "~/.cache/beekeeper-studio-updater",
      "~/.config/beekeeper-studio",
    ]
  end

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}.#{os}"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
