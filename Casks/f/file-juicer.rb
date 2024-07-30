cask "file-juicer" do
  version "4.100"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  name "File Juicer"
  desc "Extract images from PDF, PowerPoint, Word, Excel and other Files"
  homepage "https://echoone.com/filejuicer/"

  livecheck do
    url "https://echoone.com/filejuicer/latestversion"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "File Juicer.app"

  zap trash: [
    "~/Library/HTTPStorages/com.echoone.FileJuicer",
    "~/Library/Preferences/com.echoone.FileJuicer.plist",
    "~/Library/Saved Application State/com.echoone.FileJuicer.savedState",
  ]
end
