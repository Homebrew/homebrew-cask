cask "lingon-x" do
  if MacOS.version <= :high_sierra
    version "6.6.5"
    sha256 "b0231b1a98dcc8f5c4234b419c9f5331407b8cce29b33f0ea2e32b12595adfa8"
  else
    version "8.2.3"
    sha256 "7ef81a27f80f0fad23b243d63660d2be07abe0fc801ae05b3169a976916aca82"
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  name "Lingon X"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
    strategy :page_match
    regex(%r{<key>version</key>\s*\n\s*<string>(\d+(?:\.\d+)*)</string>}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Lingon X.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.LingonX#{version.major}",
    "~/Library/Application Support/Lingon X",
    "~/Library/Containers/com.peterborgapps.LingonX#{version.major}",
  ]
end
