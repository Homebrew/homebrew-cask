cask "blink1control" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "mac-#{arch}.dmg", linux: "linux-x86_64.AppImage"

  version "2.4.0"
  sha256 arm:          "cb7719c01eb3c5418315c56c36d0dfae28d28766eac24f432f45588817f16e37",
         intel:        "52247a22e36c4458d3db1ca4223b032fe29f183762694151a58fcc14795aaa94",
         x86_64_linux: "0c785a2466af31d7843dceef0605c35908eb46541ca64478af02ce0311e57422"

  on_macos do
    depends_on macos: :monterey

    app "Blink1Control#{version.major}.app"

    zap trash: [
      "~/Library/Application Support/Blink1Control#{version.major}",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.thingm.blink1control#{version.major}.sfl*",
      "~/Library/Logs/Blink1Control#{version.major}",
      "~/Library/Preferences/com.thingm.blink1control#{version.major}.plist",
      "~/Library/Saved Application State/com.thingm.blink1control#{version.major}.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Blink1Control#{version.major}-#{version}-linux-x86_64.AppImage",
              target: "Blink1Control#{version.major}.AppImage"

    zap trash: "~/.config/Blink1Control2"
  end

  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-#{url_end}"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"
end
