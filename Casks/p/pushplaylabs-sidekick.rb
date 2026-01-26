cask "pushplaylabs-sidekick" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "124.61.1.50292,e244ab6"
    sha256 "0c24c5359afd792d41d6637729b0e3e2f2c75e0db16fcbef1df1495a2fc56dbd"
  end
  on_intel do
    version "124.61.1.50293,ec2d193"
    sha256 "23484f6b82d9525cdd3f5f0db40ef248c55e156b370ee61d02e0496e393bf50d"
  end

  url "https://cdn.meetsidekick.com/browser-builds/sidekick-mac-release-#{arch}-#{version.csv.first}-#{version.csv.second}-df.dmg"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  disable! date: "2025-10-05", because: :discontinued

  app "Sidekick.app"

  zap trash: [
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
