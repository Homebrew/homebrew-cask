cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.44"
  sha256 arm:   "c21c91749f6b9e04da35b8f6c55a44a3e496d9a250a1e3742cff2c1f62b66886",
         intel: "2c4317d58cf193078ee011dfda5fa74509d0d76bc8f45b8184096cbe7707d30c"

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
