cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.41"
  sha256 arm:   "1b1691943a4f65a60d3ed38b968ed5126f7abfcf03a3d19b6e8bd72ab8dbf042",
         intel: "900feba297c1eff2f4094c37a7ce6f10cc569f44cac019138a0790c4a445c5f5"

  url "https://downloads#{version.major}.saleae.com/logic#{version.major}/Logic-#{version}-macos-#{arch}.zip"
  name "Saleae Logic2"
  desc "Signal analysis for Saleae's devices"
  homepage "https://www.saleae.com/"

  livecheck do
    url "https://logic#{version.major}api.saleae.com/download?os=osx&arch=#{arch}"
    regex(/Logic[._-]?(\d+(?:\.\d+)+)[._-]?macos[._-]?#{arch}\.zip/i)
    strategy :header_match
  end

  app "Saleae Logic.app"

  zap trash: [
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
