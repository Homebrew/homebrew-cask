cask "pollymc" do
  version "8.0"

  on_mojave :or_older do
    sha256 "12f692b06a6483cb132b777d552ef4ca746c3268e540117da91d74b1ceb3ea7d"

    url "https://github.com/fn2006/PollyMC/releases/download/#{version}/PollyMC-macOS-Legacy-#{version}.tar.gz"
  end
  on_catalina :or_newer do
    sha256 "675d3fa2a079031f1f3bb890826e7a71b62839150d2cf64b80dea3f29b88b2d3"

    url "https://github.com/fn2006/PollyMC/releases/download/#{version}/PollyMC-macOS-#{version}.tar.gz"
  end

  name "Prism Launcher"
  desc "Minecraft launcher"
  homepage "https://github.com/fn2006/PollyMC"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PollyMC.app"

  zap trash: [
    "~/Library/Application Support/PollyMC/metacache",
    "~/Library/Application Support/PollyMC/PollyMC-*.log",
    "~/Library/Application Support/PollyMC/pollymc.cfg",
    "~/Library/Preferences/org.prismlauncher.PollyMC.plist",
    "~/Library/Saved Application State/org.prismlauncher.PollyMC.savedState",
  ]
end
