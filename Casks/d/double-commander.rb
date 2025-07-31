cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.27"
  sha256 arm:   "445ee2752d2f0e4f398d362aea52efe569731c5abdacb3126c2ff125bdc21642",
         intel: "d927a96d478c89536febeb5fe182a3bf1ad5445b316a81c0d551c24e5196d3a6"

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

  disable! date: "2026-09-01", because: :unsigned

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
