cask "filemaker-pro" do
  version "20.3.1.31"
  sha256 "dd6bca59e8d849a9cd08b818e4c1418e8cbb39fc9eee8e329a35c6cab7a7b30d"

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
