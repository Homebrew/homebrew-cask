cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.45"
  sha256 arm:   "3ea97a69ee19bf8e49b9c2b108e6c3d645b7df73d848b28e626fd8ee8570da76",
         intel: "da81d33b709a6e02ea665fdad96efd552a4eadaf5a08399d9862112bba626291"

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
    "~/Library/Application Support/Logic",
    "~/Library/Logs/Logic#{version.major}",
    "~/Library/Preferences/com.saleae.saleae.plist",
    "~/Library/Saved Application State/com.saleae.saleae.savedState",
  ]
end
