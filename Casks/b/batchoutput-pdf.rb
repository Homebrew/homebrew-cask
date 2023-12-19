cask "batchoutput-pdf" do
  version "3.1.2"
  sha256 :no_check

  url "https://zevrix.com/downloads/BatchOutputPDF.dmg"
  name "BatchOutput PDF"
  desc "Automate PDF printing"
  homepage "https://zevrix.com/batchoutputpdf/"

  livecheck do
    url "https://zevrix.com/download/"
    regex(/BatchOutput\s*PDF\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "BatchOutput PDF.app"

  zap trash: [
    "~/Library/Caches/com.zevrix.BatchOutputPDF*",
    "~/Library/HTTPStorages/com.zevrix.BatchOutputPDF*",
    "~/Library/Preferences/com.zevrix.BatchOutputPDF*.plist",
    "~/Library/Saved Application State/com.zevrix.BatchOutputPDF*.savedState",
    "~/Library/WebKit/com.zevrix.BatchOutputPDF*",
  ]
end
