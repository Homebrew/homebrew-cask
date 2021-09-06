cask "sip" do
  if MacOS.version <= :sierra
    version "1.2"
    sha256 "93569421eef761ccdd2784d73e5f201d29e5e22ad6814a7a169f459f460bf4ff"
  elsif MacOS.version <= :high_sierra
    version "2.4.1"
    sha256 "9e8e69b8874891fab4fcc44edfb9b6ff2e510a1f41c87e9faea6060fc3f33073"
  else
    version "2.5.4"
    sha256 "a7f025c82088b4fef10997c68d2b1c9fb076b5519a493acd834d13c1cacbeb70"
  end

  url "https://sipapp.io/updates/v#{version.major}/sip-#{version}.zip"
  name "Sip"
  desc "Collect, organize & share colors"
  homepage "https://sipapp.io/"

  livecheck do
    url "https://sipapp.io/updates/"
    regex(/href=.*?sip[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Sip.app"

  uninstall quit: "io.sipapp.Sip-paddle"

  zap trash: [
    "~/.sip_v*",
    "~/Library/Application Support/Sip",
    "~/Library/Application Support/io.sipapp.Sip-paddle",
    "~/Library/Application Support/CrashReporter/Sip_*.plist",
    "~/Library/Caches/io.sipapp.Sip-paddle",
    "~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies",
    "~/Library/Preferences/io.sipapp.Sip-paddle.plist",
    "~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState",
  ]
end
