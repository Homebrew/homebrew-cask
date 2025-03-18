cask "qobuz-downloader" do
  version "2.0.0,1"
  sha256 "914c782dd7d25e9a17865a48eeead7ffa43fba7acb638b062a1f8eefe40c0a01"

  url "https://apps.qobuz.com/downloader/releases/macos/#{version.csv.first}+#{version.csv.second}/qobuz_downloader.dmg"
  name "Qobuz Downloader"
  desc "Tool to download entire purchases simultaneously"
  homepage "https://www.qobuz.com/applications"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)\+(\d+)/qobuz[._-]downloader\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :catalina"

  app "Qobuz Downloader.app"

  zap trash: [
    "~/Library/Application Support/com.qobuz.downloader",
    "~/Library/Caches/SentryCrash/Qobuz Downloader",
  ]
end
