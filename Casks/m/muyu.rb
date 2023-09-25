cask "muyu" do
  version "1.4.2"
  sha256 :no_check

  url "https://breakit.thriller.fun/packages/Muyu.v#{version}_29.zip"
  name "Muyu"
  desc "木鱼：集成番茄工作法与喝水提示功能"
  homepage "https://breakit.thriller.fun/"

  livecheck do
    url "https://breakit.thriller.fun/packages/appcast/v#{version}_29_appcast.xml"
    strategy :sparkle, &:short_version
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
    "~/Library/Containers/fun.thriller.BreakItLoginItem",
    "~/Library/Containers/org.sparkle-project.Downloader/Data/Library/Caches/fun.thriller.BreakIt",
    "~/Library/Containers/fun.thriller.BreakIt/Data/Library/Saved Application State/fun.thriller.BreakIt.savedState",
    "~/Library/Preferences/fun.thriller.BreakIt.plist",
  ]

end
