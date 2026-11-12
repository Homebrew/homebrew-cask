cask "signal" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  separator = on_system_conditional macos: "-mac-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_#{arch}.AppImage"

  version "8.35.0"
  sha256 arm:          "c977cd0e36f389b0ee8d8e384cb1d67c63029002d58dd68c6df1fa6a53ce79d7",
         intel:        "ddaf59be36808b1dc97f3ef433009b626d1f57395839b0efa53cdf953a05b3e2",
         x86_64_linux: "1ed1c81f5155284ea8fe8e5a2282ccd1f9650d71c59845534d1eeef967b1088d"

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
