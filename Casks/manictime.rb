cask "manictime" do
  arch arm: "arm64", intel: "x64"

  version "2023.2.0"
  sha256 arm:   "b807700edc2b117aa404077035d63f347dc2f7fb087d161b583b49c6a0cb85c9",
         intel: "89ac81b4a3f02ea88d9d8b01fc2d9a227ead07694321b544ede4d038e1a5da7c"

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
