cask "signal" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  separator = on_system_conditional macos: "-mac-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_#{arch}.AppImage"

  version "8.32.0"
  sha256 arm:          "64fab9ae0cae94caade6e1791caf0de6a0346ec49fe6f36f0af3b9a42eb63d8e",
         intel:        "c42507981acf9ba2a56939d43f5bcd21da312e818bd74e69e1bfc7b4c908e897",
         x86_64_linux: "67dc5a9487121d32dc85ae70178dadf655cc0a01d9894de06b86b45192d35cf0"

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
