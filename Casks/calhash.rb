cask "calhash" do
  on_catalina do
    version "1.0.5"
    sha256 "bb15c18839837bdeda203a8a916b09b4f2b971e5bba10b603f290130939d3bf7"

    depends_on macos: :catalina
  end
  on_big_sur do
    version "1.1.1"
    sha256 "66b2de6f514119b3ddf915310b94486d24d3cc6733c74af97e367b76cb2d7478"

    depends_on macos: :big_sur
  end
  on_monterey do
    version "1.1.9"
    sha256 "6a8b9ddd3ed4acf4e8a84c8fe78a6ed783c526d84d38bf00acaf1b37311bf223"

    depends_on macos: :monterey
  end
  on_ventura do
    version "1.2.1"
    sha256 "5372c281ab6edbd10f4a6a237a7e9afb529222b62f39c3b0357d779672cbaa6d"

    depends_on macos: :ventura
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/CalHash.dmg"
  name "CalHash"
  desc "Calculate and compare file checksums"
  homepage "https://www.titanium-software.fr/en/calhash.html"

  livecheck do
    url :homepage
    regex(/>\s*CalHash\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  app "CalHash.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/CalHash Help*",
    "~/Library/Logs/CalHash.log",
    "~/Library/Preferences/com.titanium.Calhash.plist",
    "~/Library/Saved Application State/com.titanium.Calhash.savedState",
  ]
end
