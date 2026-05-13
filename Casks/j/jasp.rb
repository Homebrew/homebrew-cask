cask "jasp" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_folder = on_arch_conditional arm: "-apple-silicon"

  version "0.97.0.0"
  sha256 arm:   "dae1452a6cca56c72b37f7d811748905c9840b54e3df07dbe26fc1176aa06ca7",
         intel: "89130c356e4b3a24a616b336eec747972f8e5e3a8cb4c11439142e13c0d74f30"

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
