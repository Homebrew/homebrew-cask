cask "bookwright" do
  version "3.2.1"
  sha256 "bd7c47d9fc57df8b630effd437c8320571c54f730e156548a0f47900dc749b8a"

  url "https://software.blurb.com/bookwright_v2/#{version}/BookWright.dmg"
  name "bookwright"
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

  depends_on macos: ">= :high_sierra"

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
