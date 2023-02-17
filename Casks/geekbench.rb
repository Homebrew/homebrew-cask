cask "geekbench" do
  on_sierra :or_older do
    version "4.4.4,401571"
    sha256 "1fc2b87742cd27deaa184a753a57bfc5a8c81de34524e9fd318d6875be6ac5c9"
  end
  on_high_sierra do
    version "5.5.1,503987"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_mojave do
    version "5.5.1,503987"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_catalina do
    version "5.5.1,503987"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_big_sur :or_newer do
    version "6.0.0,602754"
    sha256 "42c443ac203c49dce0646f847042b207560c0eb092673a47224cca5c4233f40b"
  end

  url "https://cdn.geekbench.com/Geekbench-#{version.csv.first}-Mac.zip"
  name "Geekbench"
  desc "Tool to measure the computer system's performance"
  homepage "https://www.geekbench.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Geekbench #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
    "~/Library/Saved Application State/com.primeatelabs.Geekbench#{version.major}.savedState",
  ]
end
