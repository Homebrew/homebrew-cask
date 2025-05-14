cask "qt-creator" do
  version "16.0.2"
  sha256 "0816f61a8b810ab99a1bbcd7fc3c1e9f406843c81d210bdf63a8781456804a58"

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator"
  desc "IDE for application development"
  homepage "https://www.qt.io/developers/"

  # It's necessary to check within a major/minor version directory
  # (fetching an additional page) to obtain the full version.
  livecheck do
    url "https://download.qt.io/official_releases/qtcreator/?C=M;O=D"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
    strategy :page_match do |page, regex|
      # These version directories can sometimes be empty, so this will check
      # directory pages until it finds versions
      page.scan(regex).lazy.map do |match|
        version_page = Homebrew::Livecheck::Strategy.page_content(url.sub("/?", "/#{match[0]}/?"))
        next if version_page[:content].blank?

        versions = version_page[:content].scan(regex).map(&:first)
        next if versions.blank?

        versions
      end.compact_blank.first
    end
  end

  depends_on macos: ">= :monterey"

  app "Qt Creator.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.QtCreator.plist",
    "~/Library/Preferences/org.qt-project.qtcreator.plist",
    "~/Library/Saved Application State/org.qt-project.qtcreator.savedState",
  ]
end
