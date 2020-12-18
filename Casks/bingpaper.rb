cask "bingpaper" do
  version "0.11.1,46"
  sha256 "29694e8ae3bea1a50719865ffe4ca19e7794b1c7dc733a2cd532056cf35641ee"

  url "https://github.com/pengsrc/BingPaper/releases/download/v#{version.before_comma}/BingPaper.v#{version.before_comma}.build.#{version.after_comma}.zip"
  appcast "https://github.com/pengsrc/BingPaper/releases.atom"
  name "BingPaper"
  desc "Use the Bing daily photo as your wallpaper"
  homepage "https://github.com/pengsrc/BingPaper"

  depends_on macos: ">= :catalina"

  app "BingPaper.app"

  uninstall launchctl: "io.pjw.mac.BingPaperLoginItem",
            quit:      "io.pjw.mac.BingPaper"

  zap rmdir: "~/Pictures/BingPaper",
      trash: [
        "~/Library/Application Scripts/io.pjw.mac.BingPaper",
        "~/Library/Application Scripts/io.pjw.mac.BingPaperLoginItem",
        "~/Library/Containers/io.pjw.mac.BingPaper",
        "~/Library/Containers/io.pjw.mac.BingPaperLoginItem",
      ]
end
