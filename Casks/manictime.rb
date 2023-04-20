cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2.3.2"
  sha256 arm:   "0d649ca734a3ec74f6805a5600d088d17070ef46c43cfebed80d25b2d6aef202",
         intel: "5324700989f984538ca85f530ac0c7256fdc83ca8ba8201c7d97c73bc9c0527e"

  url "https://cdn.manictime.com/setup/mac/v#{version.dots_to_underscores}/manictime-#{version}-osx-#{arch}.dmg"
  name "ManicTime"
  desc "Time tracker that automatically collects computer usage data"
  homepage "https://www.manictime.com/Mac"

  livecheck do
    url "https://www.manictime.com/mac/download"
    regex(/manictime[._-]v?(\d+(?:\.\d+)+)[._-]osx[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  pkg "manictime-#{version}-osx-#{arch}.pkg"

  uninstall pkgutil: "com.finkit.manictime.tracker"

  zap trash: "~/Library/Application Support/ManicTime"
end
