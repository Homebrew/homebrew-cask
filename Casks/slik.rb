cask "slik" do
  version "2.1.1"
  sha256 "e665c8cb375d9be485a433351b0b7f50c53524e2546b455d8963c278cec3b6ef"

  url "https://apps.inspira.io/updates/slik.zip"
  appcast "https://apps.inspira.io/updates/slik-appcast.xml"
  name "Slik"
  homepage "https://apps.inspira.io/slik/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Slik.app"

  zap trash: [
    "~/Library/Preferences/io.inspira.slik.plist",
    "~/Library/Application Support/Slik",
    "~/Library/Application Support/io.inspira.slik/com.crashlytics",
    "~/Library/Caches/io.inspira.slik",
    "~/Library/Saved Application State/io.inspira.slik.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/io.inspira.slik",
        "~/Library/Application Scripts/io.inspira.slik",
      ]
end
