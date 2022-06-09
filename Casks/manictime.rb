cask "manictime" do
  version "2.2.1"
  sha256 "386b908285dcb975121d46e8a26cffaf619d990374c493566864c3afe4e68b1a"

  url "https://cdn.manictime.com/setup/mac/v#{version.dots_to_underscores}/ManicTime-osx-x64-v#{version}.dmg"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/Mac"

  livecheck do
    url "https://www.manictime.com/mac/download"
    regex(/ManicTime[._-]osx[._-]x64[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "ManicTime-osx-x64-v#{version}.pkg"

  uninstall pkgutil: "com.finkit.manictime.tracker"

  zap trash: "~/Library/Application Support/ManicTime"
end
