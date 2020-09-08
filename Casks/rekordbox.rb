cask "rekordbox" do
  version "6.0.4,20200804101015"
  sha256 "271d9cd79f693fbe9c422f8d39bd0213a47f60e8b043612fc8c1b46ff0fe74b3"

  url "https://cdn.rekordbox.com/files/#{version.after_comma}/Install_rekordbox_x64_#{version.before_comma.dots_to_underscores}.zip"
  appcast "https://rekordbox.com/en/support/releasenote/"
  name "rekordbox"
  homepage "https://rekordbox.com/en/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Install_rekordbox_#{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
    "~/Library/Application Support/Pioneer/rekordbox",
    "~/Library/Pioneer/rekordbox",
  ]
end
