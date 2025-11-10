cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.30"
  sha256 arm:   "c635687167415f1c02cfb58472be682e30f2f33cb8d113a432cb82eeeded01b8",
         intel: "71e5634fb92813f2011ad1b0376e1f20a299fa854f3c205958c9c2e7ad8b5ed2"

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
