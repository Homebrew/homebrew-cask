cask "signal" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  separator = on_system_conditional macos: "-mac-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_#{arch}.AppImage"

  version "8.33.0"
  sha256 arm:          "4cb13e49041388c70cf7d9603c0c28cf62d7b6d12687418b39316bbe6ff1eb1a",
         intel:        "06750eef06060c70488051fe71c1dc46faabe2432dd279e660881c81176bc655",
         x86_64_linux: "436924ea7440aa7b3a7dfbd6028616873b0deabe51bbbc4e362741b4e3ab3368"

  on_macos do
    depends_on macos: :ventura

    app "Signal.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.whispersystems.signal-desktop.sfl*",
      "~/Library/Application Support/Signal",
      "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
      "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
      "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "signal-desktop.AppImage", target: "Signal.AppImage"

    zap trash: "~/.config/Signal AppImage"
  end

  url "https://updates.signal.org/desktop/signal-desktop#{separator}#{version}#{url_end}"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-#{os}.yml"
    strategy :electron_builder
  end

  auto_updates true
end
