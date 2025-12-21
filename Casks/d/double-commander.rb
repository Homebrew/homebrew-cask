cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.31"
  sha256 arm:   "606f3ea37cdbd053649b46e2dd693193582d7aaa74634785b4a5eb002698d919",
         intel: "a88b191af96636dbc9f3fa9a575bf1c1542cdd2ff966bd77c64618a0f26ef602"

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

  depends_on macos: ">= :big_sur"

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
