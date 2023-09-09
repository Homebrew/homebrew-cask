cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.2,71"
  sha256 arm:   "d085d0624576f76b656e4f4ca1ab4cf22827e40a00b411c1dfa864f8c14ba864",
         intel: "8eb3b8bad8124f7bb4eae0d2f09d0da96d7cb7306227cda236cf13c34a21278a"

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
