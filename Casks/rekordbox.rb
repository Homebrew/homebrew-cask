cask "rekordbox" do
  version "6.7.4,20230726131759"
  sha256 "bec2a3dc1af56ae6d997ea1219188c385db82ab2f6bd7fa534e75e1d9564714f"

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
