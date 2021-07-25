cask "aqua-data-studio" do
  version "22.0.0"
  sha256 "c190a2c52d21001d473af35dfb8a5b487d61795d1694ec9fa5159000762c4cb1"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://www.aquafold.com/aquadatastudio"

  livecheck do
    path = "app/home/project/public/aquadatastudio/wikibook/changelog/page"
    url "https://www.aquaclusters.com/#{path}/0/Home"
    regex(%r{href=["']?/#{Regexp.escape(path)}/(Version[._-](\d+\.\d+)/Version[._-]\d+[._-]\d+)["' >]}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      version_page = Homebrew::Livecheck::Strategy.page_content("https://www.aquaclusters.com/#{path}/#{match[1]}")
      versions = version_page[:content].scan(/#{Regexp.escape(match[2])}(?:\.\d+)+/i)
      versions.presence || "#{match[2]}.0"
    end
  end

  app "Aqua Data Studio.app"
end
