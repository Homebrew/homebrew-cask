cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0,10881"
  sha256 arm:   "fd9dffdfd72c99ced8c81dd25d22d0496c706ca8c4d52b3049a6f2c6a6ba7431",
         intel: "b9f63f118c9778f0cb64bc057688193817e46e476d030845a15aae8ad1985346"

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
