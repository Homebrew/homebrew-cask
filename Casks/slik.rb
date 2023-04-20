cask "slik" do
  version "2.1.1"
  sha256 :no_check

  url "https://apps.inspira.io/updates/slik.zip"
  name "Slik"
  desc "Apps and web apps launcher"
  homepage "https://apps.inspira.io/slik/"

  livecheck do
    url "https://apps.inspira.io/updates/slik-appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Slik.app"

  zap trash: [
        "~/Library/Application Support/io.inspira.slik/com.crashlytics",
        "~/Library/Application Support/Slik",
        "~/Library/Caches/io.inspira.slik",
        "~/Library/Preferences/io.inspira.slik.plist",
        "~/Library/Saved Application State/io.inspira.slik.savedState",
      ],
      rmdir: [
        "~/Library/Application Scripts/io.inspira.slik",
        "~/Library/Application Support/io.inspira.slik",
      ]
end
