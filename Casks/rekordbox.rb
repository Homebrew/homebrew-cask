cask "rekordbox" do
  version "6.6.4,20220623170231"
  sha256 "5a4459944a6d0233ec9dcc5e55e94a43b682845913f71e6d0f62dec4fa2f9386"

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
