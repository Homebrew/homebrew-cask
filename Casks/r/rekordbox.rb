cask "rekordbox" do
  version "6.7.7,20231018115653"
  sha256 "8c9a4d3634c320115a186f84ee08a32bd08408ff6bbbf7ebb0509f359111d6ae"

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
  depends_on macos: ">= :catalina"

  pkg "Install_rekordbox_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
    "~/Library/Application Support/Pioneer/rekordbox",
    "~/Library/Pioneer/rekordbox",
  ]
end
