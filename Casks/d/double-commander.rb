cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.19"
  sha256 arm:   "077ee15e79de97f802ccd03ab623c23b0d7013ed03546f5847649a4acf1ea017",
         intel: "b6c239b64f8036076b437f2e012e2aa30715d1455e2352a9676a0d3dc882f92d"

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
