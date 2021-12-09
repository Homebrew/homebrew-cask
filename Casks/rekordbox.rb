cask "rekordbox" do
  version "6.6.1,20211125100827"
  sha256 "7d9e0c0d2a9a71c50c9d01770718f878041b5badf3166c22ad85e148ea1fdc44"

  url "https://cdn.rekordbox.com/files/#{version.after_comma}/Install_rekordbox_#{version.before_comma.dots_to_underscores}.pkg_.zip"
  appcast "https://rekordbox.com/en/download/"
  name "rekordbox"
  desc "Free Dj app to prepare and manage your music files"
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
