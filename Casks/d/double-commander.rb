cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.10"
  sha256 arm:   "4f6fe3b2023c0cc123a5caba6fce27be63f3023b3e9aca91ea2f668659cbd691",
         intel: "3a827eb57095071de16b85a1054e053cceec2ea448c0c1430f43396a0089c9be"

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
