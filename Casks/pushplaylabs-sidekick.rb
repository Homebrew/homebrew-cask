cask "pushplaylabs-sidekick" do
  version "1.0.69"
  sha256 "62a586b4be51dc667ee3221eae59abe3a38c7fc6bcbc21a6c149f59c36e3a907"

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
