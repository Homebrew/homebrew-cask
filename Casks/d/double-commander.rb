cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.14"
  sha256 arm:   "ef4c4008ad4be13acdc855524c327a7790eccc4d78e01e851a5cbc527586768f",
         intel: "dd00f3c6035294d4a31422379cb00470f609b86cd9c8d449d686d3e9f35f4ecd"

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
