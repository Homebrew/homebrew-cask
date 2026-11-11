cask "lody" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.111.1"
  sha256 arm:          "6b943a51b9816d95ce02348d819c572019cd19e88d56aa3196480c4355c4c6a7",
         intel:        "f2fe98cf6d2861bc05d54843ea77eee4edf504dd2dc5fa581e8b721ddc564aba",
         x86_64_linux: "a9d3937fca7c490318d1f94649c06ebf12b03a71097d796f65e690b143c737fd"

  on_macos do
    depends_on macos: :ventura

    app "Lody.app"

    zap trash: [
      "~/.lody",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.lody.desktop.sfl*",
      "~/Library/Application Support/Lody",
      "~/Library/Caches/ai.lody.desktop",
      "~/Library/HTTPStorages/ai.lody.desktop",
      "~/Library/Preferences/ai.lody.desktop.plist",
      "~/Library/Preferences/lody-desktop-nodejs",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Lody-#{version}-#{arch}.AppImage", target: "Lody.AppImage"

    zap trash: [
      "~/.cache/@lodyelectron-updater",
      "~/.config/Lody",
      "~/.config/lody-desktop-nodejs",
      "~/.local/share/icons/ai.lody.desktop.png",
      "~/.lody",
    ]
  end

  url "https://updates.lody.ai/production/Lody-#{version}-#{arch}.#{url_end}"
  name "Lody"
  desc "Share coding agent sessions across desktop and mobile"
  homepage "https://lody.ai/"

  livecheck do
    url "https://updates.lody.ai/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
end
