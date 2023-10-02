cask "bookwright" do
  version "3.0.1"
  sha256 "a7f88d21b28f6d18733b08049640a149dbcdd75183b1c23afa2c8853ac9b243d"

  url "https://software.blurb.com/bookwright_v2/#{version}/BookWright.dmg"
  name "bookwright"
  desc "Make a book with this tool and the Blurb printing service"
  homepage "https://www.blurb.com/bookwright"

  # The major version has not yet been updated in
  # either the download url or the livecheck url.
  livecheck do
    url "https://www.blurb.com/bookwright_v2/versions.json"
    regex(/["']version["']:\s*?["']v?(\d+(?:\.\d+)+)["']/i)
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
end
