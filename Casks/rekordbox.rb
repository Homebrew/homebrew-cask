cask "rekordbox" do
  version "6.5.1,20210301195555"
  sha256 "8a1aaa925b9aa9f2b8997b62a426968a1017189fc6f8043a55d6dc3e9fd94c4e"

  url "https://cdn.rekordbox.com/files/#{version.after_comma}/Install_rekordbox_#{version.before_comma.dots_to_underscores}.pkg_.zip"
  name "rekordbox"
  desc "Free Dj app to prepare and manage your music files"
  homepage "https://rekordbox.com/en/"

  livecheck do
    url "https://rekordbox.com/en/download/",
        user_agent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) " \
                    "AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/Install_rekordbox_(\d+(?:_\d+)*).pkg_\.zip}i)
      "#{match[2].tr("_", ".")},#{match[1]}"
    end
  end

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
