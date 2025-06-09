cask "en-croissant" do
  version "0.11.1"
  sha256 "38b5a1e4858f2e557c51d307f4bddfe371e958ef37ddd3d37f1ba836be160d46"

  url "https://github.com/franciscoBSalgueiro/en-croissant/releases/download/v#{version}/en-croissant_#{version}_x64.dmg",
      verified: "https://github.com/franciscoBSalgueiro/en-croissant/"
  name "En-Croissant"
  desc "An open-source, cross-platform chess GUI that aims to be powerful, customizable and easy to use."
  homepage "https://encroissant.org/"

  livecheck do
    url :url
    regex(/v([\d.]*)/i)
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "en-croissant.app"

  caveats do
    requires_rosetta
  end

  zap trash: [
    "~/Library/Application Support/org.encroissant.app",
    "~/Library/Saved Application State/org.encroissant.app.savedState",
    "~/Library/Caches/org.encroissant.app",
    "~/Library/Logs/org.encroissant.app",
    "~/Library/WebKit/org.encroissant.app",
  ]
end
