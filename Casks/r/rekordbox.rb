cask "rekordbox" do
  version "7.2.4,20251007153540"
  sha256 "343327ca111797f48c43e2feb57c3b4de84c0806de4e59fc3911d902a6b0d7ce"

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
