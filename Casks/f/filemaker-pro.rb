cask "filemaker-pro" do
  version "20.3.2.201"
  sha256 "bce2917eb24dcc363f81f83a839731e5e13c5e1c248afe12ffa72035a9ffc86f"

  url "https://downloads.claris.com/esd/fmp_#{version}.dmg"
  name "FileMaker Pro"
  desc "Relational database and rapid application development platform"
  homepage "https://www.claris.com/filemaker/"

  livecheck do
    url "https://www.filemaker.com/redirects/ss.txt"
    regex(%r{/fmp[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "FileMaker Pro.app"

  zap trash: [
    "/Users/Shared/FileMaker",
    "~/Library/Application Support/FileMaker",
    "~/Library/Caches/com.filemaker.client.pro12",
    "~/Library/Caches/FileMaker",
    "~/Library/HTTPStorages/com.filemaker.client.pro12",
    "~/Library/Preferences/com.filemaker.client.pro12.plist",
    "~/Library/Saved Application State/com.filemaker.client.pro12.savedState",
    "~/Library/WebKit/com.filemaker.client.pro12",
  ]

  caveats do
    license "https://www.claris.com/company/legal/docs/eula/filemaker-pro/fmp_eula_en.pdf"
  end
end
