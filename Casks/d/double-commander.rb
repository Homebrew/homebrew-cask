cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.25"
  sha256 arm:   "0a79b2f33ab1557a0e9ca89ba02704e6234686a4755db122f492f17f3c2d5d4a",
         intel: "29ce2abeda43dcf11adf0eb26ecede4ac54a36f95021446c36382e7cc89ebdc8"

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
