cask "lingon-x" do
  on_high_sierra :or_older do
    version "6.6.5"
    sha256 "b0231b1a98dcc8f5c4234b419c9f5331407b8cce29b33f0ea2e32b12595adfa8"
  end
  on_mojave do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_catalina do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_big_sur do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_monterey :or_newer do
    version "9.1.5"
    sha256 "97924b8d1f8a6c3fa08a3b61c991d784a0f71108997f38127bc1c4c4e1ceba53"
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  name "Lingon X"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
    regex(%r{<key>version</key>\s*\n\s*<string>(\d+(?:\.\d+)+)</string>}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Lingon X.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.LingonX*",
    "~/Library/Application Support/Lingon X",
    "~/Library/Containers/com.peterborgapps.LingonX*",
  ]
end
