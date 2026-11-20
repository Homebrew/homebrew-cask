cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.50"
  sha256 arm:   "0eb670770116f1cbf0a8321553811d0853e25e0ef55efa81a032e9c75220a75b",
         intel: "887421beb7d4a46f06137280c04f5691f7f17ecf83cf87c9d6efc531ecbc86e6"

  url "https://downloads#{version.major}.saleae.com/logic#{version.major}/Logic-#{version}-macos-#{arch}.zip"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  livecheck do
    url "https://logic#{version.major}api.saleae.com/download?os=osx&arch=#{arch}"
    regex(/Logic[._-]?(\d+(?:\.\d+)+)[._-]?macos[._-]?#{arch}\.zip/i)
    strategy :header_match
  end

  depends_on macos: :monterey

  app "Saleae Logic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.saleae.saleae.sfl*",
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
