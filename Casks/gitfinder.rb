cask "gitfinder" do
  version "1.5.3"
  sha256 "3925f2a324e3ab570a9c85a9ebc7797620f4df38461d1707ee265c5f78c7c218"

  # zigz.ag/GitFinder/ was verified as official when first introduced to the cask
  url "https://zigz.ag/GitFinder/updates/GitFinder.dmg"
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
