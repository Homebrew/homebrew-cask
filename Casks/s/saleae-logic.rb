cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.12"
  sha256 arm:   "004647d584275ab7b2ec4fda358ae1675e414ad419798914a1d52a40ac39b25a",
         intel: "460b8f682dafa9f2e3c2e0cb1c683fdba72e59d073664f9c8d255706ff82a4fc"

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
