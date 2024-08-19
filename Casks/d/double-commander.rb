cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.17"
  sha256 arm:   "8d0bd7f8f314a82a91699c481afc7d6114b63e1bbb6f13a7f3b4607baaba66c5",
         intel: "46773925ed05ad4c8889b7eed2ebf53d5c8dcc08fc02e6b384ddaa04000efcac"

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
