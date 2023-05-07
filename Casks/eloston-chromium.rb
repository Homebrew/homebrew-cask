cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  on_arm do
    version "113.0.5672.63-1.1,1683437781"
    sha256 "fffea17cacae3cac8c1b752bf2f9b5facbfe7b399ef5c71f8e869c21951f3d20"
  end
  on_intel do
    version "113.0.5672.63-1.1,1683387897"
    sha256 "ccee16f6e4a03aa39a31cfdafcc4c9289540065d5364112705659a3cbcd5e533"
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
