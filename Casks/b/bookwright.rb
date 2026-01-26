cask "bookwright" do
  version "3.4.0"
  sha256 "54cb91fe7d7e09a23d17f12278c8134a823065621d77a561d1fb9e39e799213e"

  url "https://software.blurb.com/bookwright_v2/#{version}/BookWright.dmg"
  name "BookWright"
  desc "Make a book with this tool and the Blurb printing service"
  homepage "https://www.blurb.com/bookwright"

  # The major version has not yet been updated in
  # either the download url or the livecheck url.
  livecheck do
    url "https://www.blurb.com/bookwright_v2/versions.json"
    strategy :json do |json|
      json["versions"]&.map { |version| version["version"] }
    end
  end

  app "BookWright.app"

  zap trash: [
    "~/Library/Application Support/com.blurb.bookwright",
    "~/Library/Caches/com.blurb.bookwright",
    "~/Library/HTTPStorages/com.blurb.bookwright",
    "~/Library/Preferences/com.blurb.bookwright.plist",
    "~/Library/Saved Application State/com.blurb.bookwright.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
