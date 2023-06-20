cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  on_arm do
    version "114.0.5735.106-1.1,1686570558"
    sha256 "6aaa7c04e6ca0c1896decf6ff0a71edd19e8abc5789300926fa54fb3ed5dad6d"
  end
  on_intel do
    version "114.0.5735.133-1.1,1687023370"
    sha256 "e9d71356bd2b158c316a63b5b168358adc62e01094b48e306451bdbaa0f72064"
  end

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version.csv.first}_#{arch}__#{version.csv.second}/ungoogled-chromium_#{version.csv.first}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  livecheck do
    url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases?q=prerelease%3Afalse"
    regex(%r{href=["']?[^"' >]*?/tree/v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?["' >]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        (match.length > 1) ? "#{match[0]},#{match[1]}" : match[0]
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
