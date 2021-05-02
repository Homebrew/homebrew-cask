cask "qt-creator" do
  version "4.14.2"
  sha256 "1a2b1c5a85f253c78085914094e6163e6b6630bdf0b3ad1b6ad6631466c57410"

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator"
  desc "IDE for application development"
  homepage "https://www.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/official_releases/qtcreator/"
    strategy :page_match do |page|
      page.scan(%r{href="(\d+(?:\.\d+)*)/"}i).lazy.map do |match|
        version_page = Net::HTTP.get(URI.parse("#{url}#{match[0]}/"))
        version_page[%r{href="(\d+(?:\.\d+)*)/"}i, 1]
      end.reject(&:nil?).first
    end
  end

  depends_on macos: ">= :sierra"

  app "Qt Creator.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.QtCreator.plist",
    "~/Library/Preferences/org.qt-project.qtcreator.plist",
    "~/Library/Saved Application State/org.qt-project.qtcreator.savedState",
  ]
end
