cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.24"
  sha256 arm:   "cc7f753df3786aaaaa4345784dc3a1128494d023679a17ec5f47d2fafcb5ac8d",
         intel: "ad0d09f3977664b3693d7461166500395bd4168fe1cea94acdd1fd2d2f0abf6e"

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
