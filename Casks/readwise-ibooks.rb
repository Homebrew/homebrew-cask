cask "readwise-ibooks" do
  version "1.0"
  sha256 :no_check

  url "https://readwise.io/ibooks/download"
  name "Readwise iBooks"
  desc "Import highlights from Apple Books to Readwise"
  homepage "https://readwise.io/ibooks"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Readwise_iBooks.app"

  zap trash: [
    "~/Library/Caches/readwise.Readwise-iBooks",
    "~/Library/HTTPStorages/readwise.Readwise-iBooks",
    "~/Library/Preferences/readwise.Readwise-iBooks.plist",
  ]
end
