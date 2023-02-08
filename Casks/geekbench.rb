cask "geekbench" do
  on_sierra :or_older do
    version "4.4.2"
    sha256 "3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc"
  end
  on_high_sierra :or_newer do
    version "5.5.0,503982"
    sha256 "0b5f4da0ab995c0ede1746d5611857ac85f83e54938216b2a85f8de0a277c5ef"
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
