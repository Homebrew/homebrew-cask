cask "clibor" do
  version "1.3"

  language "en", default: true do
    sha256 :no_check
    url "https://chigusa-web.com/clibor-for-mac-en/dl/clibor-for-mac/"
  end
  language "ja" do
    sha256 :no_check
    url "https://chigusa-web.com/clibor-for-mac/dl/clibor-for-mac/"
  end

  name "Clibor for Mac"
  desc "Clipboard manager that enables copy and paste like FIFO / LIFO"
  homepage "https://chigusa-web.com/clibor-for-mac-en/"

  livecheck do
    url "https://chigusa-web.com/clibor-for-mac-en/download/"
    regex(/Clibor\.dmg – v(\d+\.\d+) – \d+\.\d+ MB/i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Clibor.app"

  zap trash: [
    "~/Library/Application Scripts/com.chigusa-web.Clibor",
    "~/Library/Containers/com.chigusa-web.Clibor",
  ]
end
