cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.29"
  sha256 arm:   "d347c26637311e6df4d80761b30221cffe95909d53d795a4193efcef693ddb54",
         intel: "f3058a7557f613e00e55e4a86322d680865ef1a9633d8c382035774c9fa6474e"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
