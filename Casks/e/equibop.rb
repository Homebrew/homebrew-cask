cask "equibop" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "-universal.dmg", linux: "#{arch}.AppImage"

  version "3.2.2"

  on_macos do
    sha256 "37ff17edf329d0eaf537982cfc74874f8caa1444539b58778999b8c35e280876"

    depends_on macos: :monterey

    app "equibop.app"

    zap trash: [
      "~/Library/Application Support/equibop",
      "~/Library/Caches/org.equicord.equibop",
      "~/Library/Caches/org.equicord.equibop.ShipIt",
      "~/Library/HTTPStorages/org.equicord.equibop",
      "~/Library/Preferences/org.equicord.equibop.plist",
      "~/Library/Saved Application State/org.equicord.equibop.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "d2d5dc0862c623f9e89cc36d6856975a2d7edb098f771b47ada22acf345464e7",
           x86_64_linux: "00a8cd18dd76826b4ef68f5f7ddf07d1770219b106d04f272b2a274a6f3fc031"

    app_image "Equibop-#{version}#{arch}.AppImage", target: "Equibop.AppImage"
  end

  url "https://github.com/Equicord/Equibop/releases/download/v#{version}/Equibop-#{version}#{url_end}"
  name "Equibop"
  desc "Custom Discord App"
  homepage "https://github.com/Equicord/Equibop"

  livecheck do
    url "https://github.com/Equicord/Equibop/releases/latest/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
end
