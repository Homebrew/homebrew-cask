cask "gitfinder" do
  version "1.7.8"
  sha256 "79fa743d29cd4c13c85e2ed9195009ed58fe0d7c63f28f106641093b612beccd"

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
