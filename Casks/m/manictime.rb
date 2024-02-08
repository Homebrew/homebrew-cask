cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2023.3.0"
  sha256 arm:   "246225f4942947c6b3a62df0f097b0a30347c42eefd24c6e8e97ea288b1546f2",
         intel: "3ec7667050d0ab4ac1fce8846194368445b9c1c809fa7ad5f669ad430be2890b"

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
