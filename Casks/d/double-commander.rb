cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.26"
  sha256 arm:   "47bf0d7b1ac49d0df0396dc08f63037ebd69cf089cae9475446462e7558949e1",
         intel: "b0f82a479c15bc8f2c7485b9147f6f11d86ebfe6128587f837ed455dba67a3ed"

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
