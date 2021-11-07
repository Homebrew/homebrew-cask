cask "geekbench" do
  if MacOS.version <= :sierra
    version "4.4.2"
    sha256 "3c46e630a28a0752afd702fc1cd379edd2420001be22302c932e61751284c0cc"
  else
    version "5.4.2,503844"
    sha256 "3dec8b41195e14186d9fd70a3b1ff7ebe7e74021612ea1c7b7d9598ad13690ee"
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
