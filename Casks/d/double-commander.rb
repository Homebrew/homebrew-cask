cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.12"
  sha256 arm:   "4db7dafccb199b4da8dfcbdb632f22cd13f9b1b7968e3216fb2946b41a2c0dc0",
         intel: "5b88bb6960284e311e388e742acea16a128a1f794647c830e62d5723781fcab0"

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
