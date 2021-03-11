cask "gitfinder" do
  version "1.6.2,93"
  sha256 "da22b2847ec823950af3ec2411af48538b7c1a430eaf2ec7011278a60f0f909a"

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
