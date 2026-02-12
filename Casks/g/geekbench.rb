cask "geekbench" do
  on_catalina :or_older do
    version "5.5.1"
    sha256 "04b06cb642e51230a3dfd07ce2d3a4ea696cb349583737622749174dc8747313"
  end
  on_big_sur :or_newer do
    version "6.6.0"
    sha256 "7851e0cf8a856306d673dffd2d561858486f5b22a94001d579abcab2f62b91ef"
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
    "~/Library/HTTPStorages/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
    "~/Library/Saved Application State/com.primeatelabs.Geekbench#{version.major}.savedState",
  ]
end
