cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.6,179"
  sha256 arm:   "b3404ac9361e4ce4641ee08c55cce26daf3c1e87001bd99459985211756b7e03",
         intel: "30d45a43951643de94993266a184166d79f6e4ea8473b6cb400f1698f5b3d508"

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
