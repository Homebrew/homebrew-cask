cask "pushplaylabs-sidekick" do
  version "1.0.68"
  sha256 "5ba0c905bbd9676c2fa712b4a0143af600c8339d4d296e8a2454df14c3109978"

  url "https://fast-cdn.meetsidekick.com/builds/sidekick-mac-installer-#{version}.pkg"
  name "Sidekick"
  desc "Browser designed for modern work"
  homepage "https://www.meetsidekick.com/"

  livecheck do
    url "https://api.meetsidekick.com/downloads/df/mac"
    regex(/(\d+(?:\.\d+)+)\.pkg/i)
    strategy :header_match
  end

  pkg "sidekick-mac-installer-#{version}.pkg"

  uninstall delete:  "/Applications/Sidekick.app",
            pkgutil: "org.Sidekick.#{version}",
            quit:    "com.pushplaylabs.sidekick"

  zap trash: [
    "~/Library/Application Support/Sidekick",
    "~/Library/Caches/Sidekick",
    "~/Library/Preferences/com.pushplaylabs.sidekick.plist",
    "~/Library/Saved Application State/com.pushplaylabs.sidekick.savedState",
  ]
end
