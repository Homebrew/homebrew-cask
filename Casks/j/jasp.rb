cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.98.8.0"
  sha256 arm:   "402a56bf0e3a50194197e6ee6f47e925f830043c1a94464d8aca243c14d11b98",
         intel: "1cf937576494effcd0912258198005b4a5420cd1750c13b7ca50c6cfe83620ea"

  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://github.com/jasp-stats/jasp-desktop/releases/download/v#{version.csv.first.major_minor_patch}/JASP-#{version.csv.first}-macOS-#{arch}.dmg"
  name "JASP"
  desc "Statistical analysis application"
  homepage "https://jasp-stats.org/"

  livecheck do
    url "https://jasp-stats.org/thank-you-for-downloading-jasp-macos#{livecheck_folder}/"
    regex(/href=.*?JASP[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}(?:_(\d+))?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1] ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: :monterey

  app "JASP.app"

  zap trash: [
    "~/.JASP",
    "~/Library/Application Support/JASP",
    "~/Library/Caches/JASP",
    "~/Library/Preferences/org.jasp-stats.JASP.plist",
    "~/Library/Saved Application State/org.jasp-stats.jasp.savedState",
  ]
end
