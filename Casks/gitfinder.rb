cask "gitfinder" do
  version "1.7.2,108"
  sha256 "b251a4a09f4c96180488bb46d00864fd88b0673d27c18dc0d4dcd8603900cf3d"

  url "https://get.gitfinder.com/GitFinder#{version.before_comma.dots_to_underscores}.dmg"
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
