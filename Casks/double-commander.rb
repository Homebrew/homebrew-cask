cask "double-commander" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.0,10668"
  sha256 arm:   "4727e9a4a75cb6b455d010cbd01bf8b82f1a5557a996774a98ababae3c902d34",
         intel: "22196b11a5943ad833d5adc6df34deb3a98ea1d1d80138be34bed2ce5bda2300"

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
