cask "calhash" do
  if MacOS.version <= :catalina
    version "1.0.5"
    sha256 "bb15c18839837bdeda203a8a916b09b4f2b971e5bba10b603f290130939d3bf7"
  elsif MacOS.version <= :big_sur
    version "1.1.1"
    sha256 "66b2de6f514119b3ddf915310b94486d24d3cc6733c74af97e367b76cb2d7478"
  else
    version "1.1.7"
    sha256 "bbcbbc3d3f47751d5f021603691404e0886ae999e85812c2fe55b0e98d104a04"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/CalHash.dmg"
  name "CalHash"
  desc "CalHash is a utility that you can use to calculate and compare the checksum (also known as a message-digest-fingerprint) for a file."
  homepage "https://www.titanium-software.fr/en/calhash.html"

  livecheck do
    url :homepage
    regex(/>\s*CalHash\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  # Unusual case: The software may stop working, or may be dangerous to run, on the latest macOS release.
  depends_on macos: "<= :catalina"

  app "CalHash.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/CalHash Help*",
    "~/Library/Logs/CalHash.log",
    "~/Library/Preferences/com.titanium.Calhash.plist",
    "~/Library/Saved Application State/com.titanium.Calhash.savedState",
  ]
end
