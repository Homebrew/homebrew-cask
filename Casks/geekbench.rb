cask "geekbench" do
  if MacOS.version <= :sierra
    version "4.4.2"
    sha256 "3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc"
  else
    version "5.4.1,503823"
    sha256 "b2e4f6dc82a5cc3675b7ea0ad57bb2754ebea3b8bfddcfa4b5aa739e34d36e28"
  end

  url "https://cdn.geekbench.com/Geekbench-#{version.before_comma}-Mac.zip"
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
