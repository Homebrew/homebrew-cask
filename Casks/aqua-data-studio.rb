cask "aqua-data-studio" do
  version "22.1.3"
  sha256 "21a9574908ae0f57f70b3d9c78ec4dcff3262a646bc6ba64641f20f4d10ece3b"

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
      changelog_page = Homebrew::Livecheck::Strategy.page_content(URI.join(url, changelog_path))
      next [] if changelog_page[:content].blank?

      versions = changelog_page[:content].scan(/>\s*?v?(\d+(?:\.\d+)+)/i)
      next versions.flatten if versions.present?

      # Append a patch version of 0 if the newest changelog version is just a
      # major/minor version (almost certain to be true)
      changelog_version += ".0" if changelog_version.count(".") < 2
      changelog_version
    end
  end

  app "Aqua Data Studio.app"
end
