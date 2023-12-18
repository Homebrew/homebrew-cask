cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.8,247"
  sha256 arm:   "69d88f6f1f4565295c8d8218b4170a515277d5f2c3a6027d2178011bf188f886",
         intel: "282b272a0ee56519de875a7d539f734a4490479c0dfc2681919eb6ca19df3e04"

  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version.csv.first}-#{version.csv.second}.cocoa.#{arch}.dmg",
      verified: "downloads.sourceforge.net/doublecmd/"
  name "Double Commander"
  desc "File manager with two panels"
  homepage "https://doublecmd.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/doublecmd/rss?path=/macOS"
    regex(%r{url=.*?/doublecmd[._-](\d+(?:\.\d+)+)[._-](\d+)[^"' ]*?\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Double Commander.app"

  zap trash: "~/Library/Caches/doublecmd"
end
