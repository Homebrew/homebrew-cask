cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.22"
  sha256 arm:   "05649a1b0d1a9ce0659ef8784e9da9d50c3fb41ebae75df18a08b546cfe6e6cb",
         intel: "5761863ef4df21b4d2d5d49dbb675254887cefe656eb97e2e7c97cb29b48764c"

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
