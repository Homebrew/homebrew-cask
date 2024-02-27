cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.14"
  sha256 arm:   "8dc9bed248533ba29c35d3c8da8ad679c7e1e13e643937c263ef7d436f1e8a10",
         intel: "346e675617700114313e96efd26d5647b97522a71d3687b3fb118bdfec6a574b"

  url "https://downloads.saleae.com/logic#{version.major}/Logic-#{version}-macos-#{arch}.zip"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  livecheck do
    url "https://logic#{version.major}api.saleae.com/download?os=osx&arch=#{arch}"
    regex(/Logic[._-]?(\d+(?:\.\d+)+)[._-]?macos[._-]?#{arch}\.zip/i)
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "Logic#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
