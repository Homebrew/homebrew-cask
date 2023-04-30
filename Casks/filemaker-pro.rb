cask "filemaker-pro" do
  version "20.1.1.35"
  sha256 "8ea80424a2dd45091342be62ec6d76c3bc28a37606dcaf4c80c80985b159eefa"

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
    "~/Library/Caches/FileMaker",
    "~/Library/Caches/com.filemaker.client.pro12",
    "~/Library/HTTPStorages/com.filemaker.client.pro12",
    "~/Library/Preferences/com.filemaker.client.pro12.plist",
    "~/Library/Saved Application State/com.filemaker.client.pro12.savedState",
    "~/Library/WebKit/com.filemaker.client.pro12",
  ]

  caveats do
    license "https://www.claris.com/company/legal/docs/eula/filemaker-pro/fmp_eula_en.pdf"
  end
end
