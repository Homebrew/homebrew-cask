cask "gitfinder" do
  version "1.7.9"
  sha256 "773807e4cd70df9b97f9d994dddf97e774dec2703bbd42d6795fc205e17f3bb5"

  url "https://gitfinder.com/updates/GitFinder#{version.dots_to_underscores}.dmg"
  name "GitFinder"
  desc "Git client with Finder integration"
  homepage "https://gitfinder.com/"

  livecheck do
    url "https://zigz.ag/GitFinder/updates/stablecast.xml"
    strategy :sparkle, &:short_version
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
