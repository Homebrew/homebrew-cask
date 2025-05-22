cask "tablecruncher" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8"
  sha256 arm:   "9980f46fea21e30491a6aa74bfa8d2787b3377eefe61a546ed92cd26c22fe619",
         intel: "2d304a086cb2d5eb746fabff846e34ef07d2d3d5ff45e829809cda97770436bc"

  url "https://tablecruncher.com/download/v#{version.major_minor}/Tablecruncher-#{version}-#{arch}.zip"
  name "Tablecruncher"
  desc "Lightweight CSV editor"
  homepage "https://tablecruncher.com/"

  livecheck do
    url "https://tablecruncher.com/download/"
    regex(/href=.*?Tablecruncher[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.zip/i)
  end

  app "Tablecruncher.app"

  zap trash: [
    "~/Library/Preferences/com.tablecruncher",
    "~/Library/Preferences/com.tablecruncher.Tablecruncher.plist",
    "~/Library/Saved Application State/com.tablecruncher.Tablecruncher.savedState",
  ]
end
