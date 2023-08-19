cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.1,56"
  sha256 arm:   "dceb4c2ec623677922b1ce3fc4e66ca80804e1cd30d55858f8c8f9f5789d4d46",
         intel: "d5e459bbb08e855528de0e5123fa738a93acc67d98c780665b63465e955f700d"

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
