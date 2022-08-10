cask "gitfinder" do
  version "1.7.6,126"
  sha256 "05c6cf3faff42f8935304c6810070ddb042353da89184f45e28ab233501c6408"

  url "https://gitfinder.com/updates/GitFinder#{version.csv.first.dots_to_underscores}.dmg"
  name "GitFinder"
  desc "Git client with Finder integration"
  homepage "https://gitfinder.com/"

  livecheck do
    url "https://zigz.ag/GitFinder/updates/stablecast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

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
