cask "tagspaces" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "6.15.1"
  sha256 arm:          "dbff1fe428fa0a838b3f2c72b24722b853e8a7b0472194d92cb22ba9225d573d",
         intel:        "21df56d1e0eb2b1944ff8079b98a54d544be82209cd899e832338811690c598d",
         arm64_linux:  "7ad786675cbd70772dd74d7ccb152f1eca4a0d8b9e4c6c75f49976cbe1f01c8d",
         x86_64_linux: "a2ca0b2f33049e24fb61325265171256c37eb5746a301f5a79db67c257b5cf09"

  on_macos do
    depends_on macos: :ventura

    app "TagSpaces.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.tagspaces.desktopapp.sfl*",
      "~/Library/Application Support/TagSpaces",
      "~/Library/Preferences/org.tagspaces.desktopapp.plist",
      "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
    ]
  end
  on_linux do
    app_image "tagspaces-linux-#{arch}-#{version}.AppImage", target: "TagSpaces.AppImage"

    zap trash: "~/.config/TagSpaces"
  end

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{os}-#{arch}-#{version}.#{url_end}"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
