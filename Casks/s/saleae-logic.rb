cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.49"
  sha256 arm:   "8e7ea6bcfeb3841c47f868e7375415cfbf651520e0fa3250fb3217a5644eb671",
         intel: "25f2b852fb40d63dfab78769d25e4483fe85f0ab1f0ac03efb8693f250e5d672"

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
