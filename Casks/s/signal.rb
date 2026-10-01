cask "signal" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  separator = on_system_conditional macos: "-mac-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_#{arch}.AppImage"

  version "8.29.0"
  sha256 arm:          "3a9ce7002f03cb50c8f422d00c543a97933da12c287c62ca0c445d61b5442213",
         intel:        "f650582e26f1bbc65db0a1e9b1a27662ee0fe07a97adb65600efe243fd61a7e1",
         x86_64_linux: "3aa448b5fb41d05150afba29aad506e138782498d00b8cb1c7efe91167757a79"

  on_macos do
    depends_on macos: :ventura

    app "Signal.app"

    zap trash: [
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
