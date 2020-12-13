cask "futuniuniu" do
  version "10.13.736,202012011017"
  sha256 "074c8340ebf346a030508787be5e75da852666e9cf63a20d8028d0945475f369"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  appcast "https://www.futunn.com/download/mac"
  name "FutuNiuniu"
  name "富途牛牛"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/7435
  app "FutuNiuniu.app", target: "富途牛牛.app"
end
