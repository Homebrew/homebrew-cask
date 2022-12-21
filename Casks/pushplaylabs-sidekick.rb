cask "pushplaylabs-sidekick" do
  version "1.0.75"
  sha256 "2a8e6c420ac6d16ad7b1bedeaffd779a7bd637218980d9798f3535677fa26dda"

  url "https://cdn.meetsidekick.com/browser-builds/sidekick-mac-installer-#{version}.pkg"
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
