cask "manictime" do
  version "2.0.28"
  sha256 "a4990d348577d0024273298893c2cec1e75998834b10c47e12592522f15cd009"

  url "https://cdn.manictime.com/setup/mac/ManicTime-v#{version}.dmg"
  appcast "https://www.manictime.com/Mac/Releases"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/Mac"

  depends_on macos: ">= :sierra"

  pkg "ManicTime-v#{version}.pkg"

  uninstall pkgutil: "com.finkit.manictime.tracker"

  zap trash: "~/Library/Application Support/ManicTime"
end
