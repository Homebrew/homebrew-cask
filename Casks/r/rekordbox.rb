cask "rekordbox" do
  version "7.0.8,20241224191039"
  sha256 "774b5f33e18dc95cffed0f92e2977c9da9efe3c30455f392ca60c09d3845a62a"

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
  depends_on macos: ">= :catalina"

  pkg "Install_rekordbox_#{version.csv.first.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.pioneer.rekordbox.#{version.major}.*",
            delete:  "/Applications/rekordbox #{version.major}"

  zap trash: [
    "~/Library/Application Support/Pioneer/rekordbox",
    "~/Library/Pioneer/rekordbox",
  ]
end
