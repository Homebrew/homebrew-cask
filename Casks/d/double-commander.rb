cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.11"
  sha256 arm:   "92498f714f1ea3fd6428e92485730111c6ad6a2f5061373284927107cfa8ae0e",
         intel: "a857c96c2ee5b7cb78d8b2cb95db7e38b3a5ede48ce127f73090f4346f2ab60b"

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
