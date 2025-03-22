cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.23"
  sha256 arm:   "2777668ec66d2b1418228c18484ed40cc711d05cdb660da5dcbdda8ef4b3bd71",
         intel: "932e6d027730c3a854c1b35332df760482c0cd3cce265ccb5fe9c7e42e5da3f3"

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
