cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.3,100"
  sha256 arm:   "d7f2a7483bb2686ac44db085bff394959c8dc8282d7bd15171474bec8266cdc4",
         intel: "63289dbcf489c2a28aa36f4bfa86e8d43d8d053ed4211a889b8881edc7a94db9"

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
