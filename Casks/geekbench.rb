cask "geekbench" do
  if MacOS.version <= :sierra
    version "4.4.2"
    sha256 "3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc"
  else
    version "5.4.4,503875"
    sha256 "6b50e91213e9c4013e352fce1562288e9c4551378cfe0a11d4d27626a7caeb89"
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
