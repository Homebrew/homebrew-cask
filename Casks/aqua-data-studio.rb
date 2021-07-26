cask "aqua-data-studio" do
  version "22.0.0"
  sha256 "c190a2c52d21001d473af35dfb8a5b487d61795d1694ec9fa5159000762c4cb1"

  url "https://downloads.aquafold.com/v#{version}/osx/ads-osx-#{version}.tar.gz"
  name "Aquafold Aqua Data Studio"
  desc "Database IDE with data management and visual analytics"
  homepage "https://www.aquafold.com/aquadatastudio"

  livecheck do
    url "https://www.aquaclusters.com/app/home/project/public/aquadatastudio/wikibook/changelog/page/0/Home"
    regex(%r{href=["']?([^"' >]*?/changelog/page/Version[._-]?(\d+(?:\.\d+)+)/[^"' >]*?)["' >]}i)
    strategy :page_match do |page, regex|
      changelog_matches = page.scan(regex)
      next [] if changelog_matches.blank?

      changelog_matches.uniq!(&:second)
      changelog_matches.sort_by! { |match| Version.new(match.second) }

      # Assume the last-sorted version is newest
      changelog_path, changelog_version = changelog_matches.last

      # Check the changelog of the newest version to identify patch versions
      changelog_url = URI.join(url, changelog_path)
      changelog_page = Homebrew::Livecheck::Strategy.page_content(changelog_url)
      next [] if changelog_page[:content].blank?

      patch_versions = changelog_page[:content].scan(/>\s*?v?(\d+(?:\.\d+)+)/i)
      next patch_versions.flatten if patch_versions.present?

      # Append a patch version of 0 if the newest changelog version is just a
      # major/minor version (almost certain to be true)
      changelog_version += ".0" if changelog_version.count(".") < 2
      changelog_version
    end
  end

  app "Aqua Data Studio.app"
end
