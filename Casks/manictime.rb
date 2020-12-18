cask "manictime" do
  version "2.0.31"
  sha256 "a63c9f3a1b7d21976b1fbbfecdc9d752bd2640a4422d7745f922ecbed0d547f8"

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
