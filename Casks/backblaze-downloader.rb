cask "backblaze-downloader" do
  version "8.5.0.660"
  sha256 :no_check

  url "https://secure.backblaze.com/mac_restore_downloader"
  name "Backblaze Downloader"
  desc "Download Backblaze restored files more reliabily"
  homepage "https://www.backblaze.com/"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["com.backblaze.BackblazeDownloader"].short_version
    end
  end

  app "Backblaze Downloader.app"

  uninstall quit: "com.backblaze.BackblazeDownloader"

  zap trash: [
    "~/Library/Logs/BackblazeDownloader",
    "~/Library/Preferences/com.backblaze.BackblazeDownloader.plist",
  ]
end
