cask "rekordbox" do
  version "6.6.5,20221005104542"
  sha256 "acdbbce29ac8b427d4addfcccf5e53771cfcc8280fa5e11f9584c0517474cf4d"

  url "https://cdn.rekordbox.com/files/#{version.csv.second}/Install_rekordbox_#{version.csv.first.dots_to_underscores}.pkg_.zip"
  name "rekordbox"
  desc "Free Dj app to prepare and manage your music files"
  homepage "https://rekordbox.com/en/"

  livecheck do
    url "https://rekordbox.com/en/download/"
    regex(%r{data-url=.*?/(\d+)/Install[._-]rekordbox[._-]v?(\d+(?:[._]\d+)+)\.pkg_\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second.tr("_", ".")},#{match.first}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Install_rekordbox_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
    "~/Library/Application Support/Pioneer/rekordbox",
    "~/Library/Pioneer/rekordbox",
  ]
end
