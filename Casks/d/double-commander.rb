cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.32"
  sha256 arm:   "044592bc65aa43086aeaa8dc8026844a51462255c25d292dde6459e4f7e4313f",
         intel: "d795cdba799ffce80faeb61e64898b6440d001598026cddcbed6aba12201321a"

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
