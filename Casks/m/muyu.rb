cask "muyu" do
  version "1.4.3,33"
  sha256 "1c9f82d44b2641c1253e5fd707f8990a6782e44b60d65903f33f7c463b3c0572"

  url "https://breakit.thriller.fun/packages/Muyu.v#{version.csv.first}_#{version.csv.second}.zip"
  name "Muyu"
  desc "Combination of work efficiency and health"
  homepage "https://breakit.thriller.fun/"

  livecheck do
    url "https://breakit.thriller.fun/packages/appcast/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
