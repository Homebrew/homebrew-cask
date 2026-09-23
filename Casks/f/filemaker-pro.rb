cask "filemaker-pro" do
  version "26.0.3.307"
  sha256 "bcb1d2087458192db8957da6e7d08e15ef77d73674cbe5a30e470b6cd6b18b9d"

  url "https://downloads.claris.com/esd/fmp_#{version}.dmg"
  name "FileMaker Pro"
  desc "Relational database and rapid application development platform"
  homepage "https://www.claris.com/filemaker/"

  livecheck do
    url "https://www.filemaker.com/redirects/ss.txt"
    regex(%r{/fmp[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: :sonoma

  app "FileMaker Pro.app"

  uninstall quit: "com.filemaker.client.pro12"

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
