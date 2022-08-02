cask "onyx" do
  if MacOS.version <= :el_capitan
    version "3.1.9"
    sha256 "7f8df2c9e97eb465aba88b000fa2f58958421efeba1239303ff0071e9b7b0536"
  elsif MacOS.version <= :sierra
    version "3.3.1"
    sha256 "887272335926005f49bbd35f66eb3ea5a6c19d3a35a8fada68357ab5860a7c1b"
  elsif MacOS.version <= :high_sierra
    version "3.4.9"
    sha256 "60e4f56fb2e5457aca1aa1d2a9be95502a310b0de75112e91b7c89bf4a2be829"
  elsif MacOS.version <= :mojave
    version "3.6.8"
    sha256 "d27529bc497b03c2486fcb8f0d3bfbb4e4a30d4abe25eddcd059ab47aaea6672"
  elsif MacOS.version <= :catalina
    version "3.8.7"
    sha256 "0dd8119ad3441c5130ca584ac90ad450c272aab8b577925561a2536da48d2d54"
  elsif MacOS.version <= :big_sur
    version "4.0.2"
    sha256 "18659c76972690bb58f1c1b850ae2c6c9991fdeb9c22790daa1b18c9fa74cb8e"
  else
    version "4.2.2"
    sha256 "ae90388b2e787f7c09ceb4a49f84f8c53cf5d4b03e4a5a1f6b5f2a5385bba241"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/OnyX.dmg"
  name "OnyX"
  desc "Verify system files structure, run miscellaneous maintenance and more"
  homepage "https://www.titanium-software.fr/en/onyx.html"

  livecheck do
    url :homepage
    regex(/>\s*OnyX\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  # Unusual case: The software may stop working, or may be dangerous to run, on the latest macOS release.
  depends_on macos: "<= :monterey"

  app "OnyX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.titanium.OnyX.help*",
    "~/Library/Logs/OnyX.log",
    "~/Library/Preferences/com.titanium.OnyX.plist",
    "~/Library/Preferences/OnyX.plist",
    "~/Library/Saved Application State/com.titanium.OnyX.savedState",
  ]
end
