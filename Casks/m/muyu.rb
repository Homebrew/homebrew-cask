cask "muyu" do
  version "1.5.0,37"
  sha256 "802c0600b75ec4e15c668dd1dfb883edd9c10437dd5eb980c5bd254e18700825"

  url "https://breakit.thriller.fun/packages/Muyu.v#{version.csv.first}_#{version.csv.second}.zip"
  name "Muyu"
  desc "Combination of work efficiency and health"
  homepage "https://breakit.thriller.fun/"

  livecheck do
    url "https://breakit.thriller.fun/packages/appcast/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Muyu.app"

  uninstall quit: "fun.thriller.BreakIt"

  zap trash: [
    "~/Library/Application Scripts/fun.thriller.BreakIt",
    "~/Library/Application Scripts/fun.thriller.BreakItLoginItem",
    "~/Library/Caches/fun.thriller.BreakIt",
    "~/Library/Containers/fun.thriller.BreakIt",
    "~/Library/Containers/fun.thriller.BreakIt/Data/Library/Saved Application State/fun.thriller.BreakIt.savedState",
    "~/Library/Containers/fun.thriller.BreakItLoginItem",
    "~/Library/Containers/org.sparkle-project.Downloader/Data/Library/Caches/fun.thriller.BreakIt",
    "~/Library/Preferences/fun.thriller.BreakIt.plist",
  ]
end
