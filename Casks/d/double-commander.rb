cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.13"
  sha256 arm:   "d6829d815a3478b2d26e7ba9b896b8bc60e0b57f3a50fb3b1aaa5bb75e1fd15d",
         intel: "e0cfaeea23b407feec5dc54deb844abbd083c923cab55804f3bb96ecb18993c7"

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
