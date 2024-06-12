cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.15"
  sha256 arm:   "43765456a25dc31cf8f5ee8a1992e294f5667f977a7cd3ef2d9e2eecaf927c81",
         intel: "efa560176f897097024f0d29f3724f1f6bed34e93115879c2fa103cd98ed72ad"

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version.tr(",", "-")}.cocoa.#{arch}.dmg",
      verified: "downloads.sourceforge.net/doublecmd/"
  name "Double Commander"
  desc "File manager with two panels"
  homepage "https://doublecmd.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/doublecmd/rss?path=/macOS"
    regex(%r{url=.*?/doublecmd[._-](\d+(?:[.-]\d+)+)[^"' ]*?\.dmg}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ",") }
    end
  end

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
