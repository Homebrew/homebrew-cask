cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2.3.1"
  sha256 arm:   "960b18de5880cfc1c9091a1e7470a53d8052181a459d7ce078f9613cb90d9eb2",
         intel: "9c3bc318f52e08d7373058b230a3e9e89bd175688c186ce79619569d499a79b1"

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
