cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.18"
  sha256 arm:   "6fbfd93d00a8872dc9a2b95999157d69f3c49902bcb42d36f2cfb3e11fe863a1",
         intel: "17fae2a3739888644312cf244f252cfb19ce56e62088e346558c2822bb1177dc"

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
