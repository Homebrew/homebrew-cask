cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.5,159"
  sha256 arm:   "95c9dc25768089a57cf5576862f6720c4d9071daf777a6c5a1b7386df33b4787",
         intel: "69f10c92cbc16ca79f9dd7851916c7a3837c75f590d83a69a2908315afd08d69"

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
