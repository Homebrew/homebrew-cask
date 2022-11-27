cask "klokki" do
  version "1.3.6,85"
  sha256 :no_check

  url "https://klokki.com/download/Klokki.dmg"
  name "Klokki"
  desc "Automatic time-tracking solution or freelancers and makers"
  homepage "https://klokki.com/"

  # The dates in the appcast are sometimes out of order (i.e., a newer version
  # may have an older `pubDate`), so we have to override the default `sparkle`
  # strategy logic to identify the latest version in this case.
  livecheck do
    url "https://klokki.com/download/appcast.xml"
    strategy :sparkle do |items|
      items.map do |item|
        next if item.short_version.blank? || item.version.blank?

        "#{item.short_version},#{item.version}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Klokki.app"
end
