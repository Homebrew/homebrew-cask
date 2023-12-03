cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.7,195"
  sha256 arm:   "c8f0111299d92b3ff77748b9db7c26766df9b9f12fc6d718d75d2c82e792b33c",
         intel: "ad3c9daf99445972987a7f6585acf703b4ee2d181fbd80ccb35deab821ae59af"

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
