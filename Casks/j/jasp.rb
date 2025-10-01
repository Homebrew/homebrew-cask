cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.95.3.0"
  sha256 arm:   "6f482bacf3250cdff5c54de4eae5ba7e24295ea34f082b9f4902dae431ce1a8b",
         intel: "8dd5df8eaa40aa807c45b452a9959d51dd06c6653e050e92585c2955991474af"

  url "https://github.com/jasp-stats/jasp-desktop/releases/download/v#{version.csv.first.major_minor_patch}/JASP-#{version.csv.first}-macOS-#{arch}.dmg",
      verified: "github.com/jasp-stats/jasp-desktop/"
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

  depends_on macos: ">= :monterey"

  app "JASP.app"

  zap trash: [
    "~/.JASP",
    "~/Library/Application Support/JASP",
    "~/Library/Caches/JASP",
    "~/Library/Preferences/org.jasp-stats.JASP.plist",
    "~/Library/Saved Application State/org.jasp-stats.jasp.savedState",
  ]
end
