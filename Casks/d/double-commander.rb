cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.28"
  sha256 arm:   "19431fb342b1e3a3d98f0424807d0e8a8422e9448fcabdae5da75ebfb9f3abf6",
         intel: "edcff577873e31f30857a66ba2749ebcda85cf41fe91e9ce7311a1cfa19549a5"

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
