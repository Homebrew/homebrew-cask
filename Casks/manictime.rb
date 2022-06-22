cask "manictime" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.3.0"

  if Hardware::CPU.intel?
    sha256 "2ececb9dfcadfd82fa4f994ae12f09ca5df0d40977b5b0720157aead93ae2b3d"
  else
    sha256 "11dac09661c4a22881c8b6a042c144127aaa0b92ab6321ebe1ea136f5201bf02"
  end

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
