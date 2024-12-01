cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.21"
  sha256 arm:   "452fb8c4a8a96a65081e5125640f1cf3e7557214b5125579350313c6f2975f6f",
         intel: "3fc64d35f286df9116337785f094018d8e925288220f1e7ae03f7070ee2af481"

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
