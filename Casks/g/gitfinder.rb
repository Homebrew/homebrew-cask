cask "gitfinder" do
  version "1.7.10"
  sha256 "6cb3f5719116b2835b2dc0403e2f232a8f2bd9fed71d2fc6dde3f21bed94b9f6"

  url "https://gitfinder.com/updates/GitFinder#{version.dots_to_underscores}.dmg"
  name "GitFinder"
  desc "Git client with Finder integration"
  homepage "https://gitfinder.com/"

  livecheck do
    url "https://zigz.ag/GitFinder/updates/stablecast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
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
