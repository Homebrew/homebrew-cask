cask "sip" do
  if MacOS.version <= :sierra
    version "1.2"
    sha256 "93569421eef761ccdd2784d73e5f201d29e5e22ad6814a7a169f459f460bf4ff"
  else
    version "2.5.2,251"
    sha256 "bf9988c28ec0fb474f4b7a0330f9140f3a07898240ed01800dfc3dfcc77301b2"
  end

  url "https://sipapp.io/updates/v#{version.major}/sip-#{version.before_comma}.zip"
  name "Sip"
  desc "Collect, organize & share colors"
  homepage "https://sipapp.io/"

  livecheck do
    url "https://sipapp.io/updates/v#{version.major}/sip.xml"
    strategy :sparkle
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
