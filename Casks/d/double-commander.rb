cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.20"
  sha256 arm:   "d5fbb2d5e85f8912390cb0b3efd4f6a7a7049eaf56264a6f9635bc9fa525c6e2",
         intel: "eb6641cc2cd0bb73f47f0d196698c68fc99098872215d3c9ba7ae20f0faa5e60"

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
