cask "rekordbox" do
  version "7.2.6,20251023213714"
  sha256 "e5f7ca92ff1810c052cddfc3a152a1ca19fe5615394ace4aa74b0bb3939cbe70"

  url "https://cdn.rekordbox.com/files/#{version.csv.second}/Install_rekordbox_#{version.csv.first.dots_to_underscores}.pkg_.zip"
  name "rekordbox"
  desc "Free Dj app to prepare and manage your music files"
  homepage "https://rekordbox.com/en/"

  livecheck do
    url "https://rekordbox.com/en/download/"
    regex(%r{data-url=.*?/(\d+)/Install[._-]rekordbox[._-]v?(\d+(?:[._]\d+)+)[^"'< ]+\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1].tr("_", ".")},#{match[0]}" }
    end
  end

  auto_updates true

  pkg "Install_rekordbox_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
    "~/Library/Application Support/Pioneer/rekordbox",
    "~/Library/Pioneer/rekordbox",
  ]
end
