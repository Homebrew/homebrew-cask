cask "geekbench" do
  on_sierra :or_older do
    version "4.4.4"
    sha256 "1fc2b87742cd27deaa184a753a57bfc5a8c81de34524e9fd318d6875be6ac5c9"
  end
  on_high_sierra do
    version "5.5.1"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_mojave do
    version "5.5.1"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_catalina do
    version "5.5.1"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_big_sur :or_newer do
    version "6.2.1"
    sha256 "9e34468b0d1e0709ef8d32db517d5c3cd8bbeba5ae77d032e13e63f90a4539a8"
  end

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  name "Geekbench"
  desc "Tool to measure the computer system's performance"
  homepage "https://www.geekbench.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Geekbench #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
    "~/Library/Saved Application State/com.primeatelabs.Geekbench#{version.major}.savedState",
  ]
end
