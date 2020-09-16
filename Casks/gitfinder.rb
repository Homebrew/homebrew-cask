cask "gitfinder" do
  version "1.5.1"
  sha256 "d84e83960790d93a9164aaee4450475c2b49789bc24f89b8d472f4f0f27caf89"

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
