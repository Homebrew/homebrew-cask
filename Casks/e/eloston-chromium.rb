cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  on_arm do
    version "120.0.6099.109-1.1,1702832323"
    sha256 "8dc346e88e9cddff7f0b970cd3a68d741b0de3ff8e04fa346a3eed37da33f086"
  end
  on_intel do
    version "120.0.6099.109-1.1,1702796806"
    sha256 "77d41caa168907f94246b46d6c85f975fdc7cb0975be471c21c648bb71f23779"
  end

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version.csv.first}_#{arch}__#{version.csv.second}/ungoogled-chromium_#{version.csv.first}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  # Releases are separated by architecture, so we have to check multiple recent
  # releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        (match.length >= 2) ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
