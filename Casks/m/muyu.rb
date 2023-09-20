cask "muyu" do
  version "1.4.2_27"
  sha256 "6d2b6cb80c8c392eaf56090e16b82a1fc3b69f9b1e7cf0f6b19a8cb286fe788a"

  url "https://breakit.thriller.fun/packages/Muyu.v#{version}.zip"
  name "Muyu"
  desc "木鱼：集成番茄工作法与喝水提示功能"
  homepage "https://breakit.thriller.fun/"

  livecheck do
    url "https://breakit.thriller.fun/packages/appcast/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Muyu.app"

  uninstall quit: "com.thriller.breakit"

  zap trash: [
    "~/Library/Containers/fun.thriller.BreakIt",
    "~/Library/Containers/fun.thriller.BreakItLoginItem",
    "~/Library/Containers/org.sparkle-project.Downloader/Data/Library/Caches/fun.thriller.BreakIt",
    "~/Library/Containers/fun.thriller.BreakIt/Data/Library/Saved\ Application\ State/fun.thriller.BreakIt.savedState",
    "~/Library/Preferences/fun.thriller.BreakIt.plist",
    "~/Library/Application\ Scripts/fun.thriller.BreakIt",
    "~/Library/Application\ Scripts/fun.thriller.BreakItLoginItem",
    "~/Library/Caches/fun.thriller.BreakIt"
  ]
end
