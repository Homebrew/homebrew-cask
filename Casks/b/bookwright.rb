cask "bookwright" do
  version "3.0.0"
  sha256 "2f17ea5af9a08eceb5a6828c405adc67af0e9f947e41958e5f6f4ff49df66a7e"

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

  app "BookWright.app"

  zap trash: [
    "~/Library/Application Support/com.blurb.bookwright",
    "~/Library/Caches/com.blurb.bookwright",
    "~/Library/HTTPStorages/com.blurb.bookwright",
    "~/Library/Preferences/com.blurb.bookwright.plist",
    "~/Library/Saved Application State/com.blurb.bookwright.savedState",
  ]
end
