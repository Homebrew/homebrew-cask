cask "rekordbox" do
  version "6.6.0,20211110092655"
  sha256 "3daa63c1487fb7f3742bea566b30f5eca6001e0f2dff2b751ab0aaeafb09d7a0"

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
