cask "gitfinder" do
  version "1.6"
  sha256 "539d6ceea58fcab0213917cb4809a9d7100239647e31842d8b4770bbedba7ca0"

  url "https://get.gitfinder.com/GitFinder#{version.dots_to_underscores}.dmg"
  appcast "https://zigz.ag/GitFinder/updates/stablecast.xml"
  name "GitFinder"
  homepage "https://gitfinder.com/"

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
