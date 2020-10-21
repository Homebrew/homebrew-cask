cask "gitfinder" do
  version "1.5.2"
  sha256 "fbf85d2ec2a943316f2ea4d46bfdf75fa0b69f8600d475c24febfc1b7de89ed2"

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
