cask "onyx" do
  macos_release = MacOS.version.to_s.delete(".")

  case MacOS.version
  when :yosemite
    version "3.0.2"
    sha256 "9672a1b300501ec7c726508561c885f2b5e82069ef65145796dc40b0d386a8b0"
  when :el_capitan
    version "3.1.9"
    sha256 "7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536"
  when :sierra
    version "3.3.1"
    sha256 "887272335926005f49bbd35f66eb3ea5a6c19d3a35a8fada68357ab5860a7c1b"
  when :high_sierra
    version "3.4.9"
    sha256 "60e4f56fb2e5457aca1aa1d2a9be95502a310b0de75112e91b7c89bf4a2be829"
  when :mojave
    version "3.6.8"
    sha256 "d27529bc497b03c2486fcb8f0d3bfbb4e4a30d4abe25eddcd059ab47aaea6672"
  else
    version "3.8.4"
    sha256 "ceee72dff52e73ea8acae847ad1fec2f68a2552da693c6d4439e71e0ac1473cc"
  end

  url "https://www.titanium-software.fr/download/#{macos_release}/OnyX.dmg"
  appcast "https://www.titanium-software.fr/en/onyx.html"
  name "OnyX"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
    :yosemite,
    :el_capitan,
    :sierra,
    :high_sierra,
    :mojave,
    :catalina,
  ]

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end
