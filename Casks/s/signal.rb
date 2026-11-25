cask "signal" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  separator = on_system_conditional macos: "-mac-#{arch}-", linux: "_"
  url_end = on_system_conditional macos: ".zip", linux: "_#{arch}.AppImage"

  version "8.36.0"
  sha256 arm:          "2a5f42c7c9bd8fbb10ac082877832a76842ce82e4eb1389de335df11e13d08e3",
         intel:        "5e5bc9bd3da940ec3e2d6f72939709f6da5a91d7cbbfcfc1a3843c3441101741",
         x86_64_linux: "76a653c8b38d8b9c7f48403c4bedbb69f99c3aa1e19062440a9996a40a7a07fc"

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
