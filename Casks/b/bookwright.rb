cask "bookwright" do
  version "3.3.0"
  sha256 "fecdcde26a29345a96663a36a519e6b5fd9421514d1a18326c249fbe861fd0ec"

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
