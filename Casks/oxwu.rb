cask "oxwu" do
  on_intel do
    version "3.0.0"
    sha256 :no_check
    url "https://eew.earthquake.tw/releases/OXWU-Setup-osx64.dmg"

    caveats do
      discontinued

      <<~EOS
        Development has ended on the Intel version.
      EOS
    end
  end
  on_arm do
    version "4.0.2"
    sha256 :no_check
    url "https://eew.earthquake.tw/releases/mac/arm64/oxwu-mac-arm64.dmg"

    livecheck do
      url "https://eew.earthquake.tw/releases/mac/arm64/latest-mac.yml"
      strategy :electron_builder
    end
  end

  name "OX Wake Up"
  desc "Taiwan Earthquake app"
  homepage "https://eew.earthquake.tw/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "地牛Wake Up!.app"

  uninstall quit: "com.nw-builder.wakeup"

  zap trash: [
    "~/Library/Application Support/OXWU",
    "~/Library/Preferences/com.nw-builder.wakeup.plist",
    "~/Library/Saved Application State/com.nw-builder.wakeup.savedState",
  ]
end
