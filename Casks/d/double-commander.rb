cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.4,119"
  sha256 arm:   "961ebc494e20193bcce905f01c5fd2c28b8aa643b6f9ba9751d68f5a7a6c2795",
         intel: "cfb48e8167703d04d5883d6ff4f1a3e8ea556d10bcfdfef1528284cd0aed5661"

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
