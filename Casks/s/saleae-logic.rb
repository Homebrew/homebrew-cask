cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.27"
  sha256 arm:   "b58e7f6715fec06cb2f2e305675e0de4299d2c7ad7a93c4ae80931ecb8cc88f1",
         intel: "4daa9dd1049dd5dad044fdddcfb66d5fb97ba96abc5403c7be7a9bde8d8a696c"

  url "https://downloads#{version.major}.saleae.com/logic#{version.major}/Logic-#{version}-macos-#{arch}.zip"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  livecheck do
    url "https://logic#{version.major}api.saleae.com/download?os=osx&arch=#{arch}"
    regex(/Logic[._-]?(\d+(?:\.\d+)+)[._-]?macos[._-]?#{arch}\.zip/i)
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Logic#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
