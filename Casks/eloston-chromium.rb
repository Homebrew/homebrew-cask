cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  on_intel do
    version "106.0.5249.103-1.1,1665122438"
    sha256 "58725d236967bebe19af8bcf34fa6c6b5aeffd07b113d566bd78f9dbff84633e"
  end
  on_arm do
    version "106.0.5249.103-1.1,1665168352"
    sha256 "08a9078a74d6a6fb16864e1e91f9f46c2b01392136dd353bc7e403b9c937f5d3"
  end

  url "https://github.com/kramred/ungoogled-chromium-macos/releases/download/#{version.csv.first}_#{arch}__#{version.csv.second}/ungoogled-chromium_#{version.csv.first}_#{arch}-macos.dmg",
      verified: "github.com/kramred/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  livecheck do
    url "https://github.com/kramred/ungoogled-chromium-macos/releases?q=prerelease%3Afalse"
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
