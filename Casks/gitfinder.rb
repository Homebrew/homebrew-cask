cask "gitfinder" do
  version "1.7,100"
  sha256 "ad582dc99ce8393a94056ea5d819d0dd2108fcc6598e73d90006c8750d5df09d"

  url "https://get.gitfinder.com/GitFinder#{version.before_comma.dots_to_underscores}.dmg"
  name "GitFinder"
  homepage "https://gitfinder.com/"

  livecheck do
    url "https://zigz.ag/GitFinder/updates/stablecast.xml"
    strategy :sparkle
  end

  app "GitFinder.app"

  uninstall launchctl: "ag.zigz.GitFinder.GitFinderLauncher",
            quit:      [
              "ag.zigz.GitFinder",
              "ag.zigz.GitFinder.GitFinderSync",
            ]

  zap trash: [
    "~/Library/Application Scripts/ag.zigz.GitFinder*",
    "~/Library/Containers/ag.zigz.GitFinder*",
    "~/Library/Group Containers/*.ag.zigz.GitFinder",
  ]
end
