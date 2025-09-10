cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.36"
  sha256 arm:   "6c27c6e52d28ae0e74c51c79f64cfd0d1c8d84b618a5f3e85a7c021072be5e38",
         intel: "fb5c9d91c189ba9e9f71e9c39fc5f2ed8aafd74cb02be3a4b82f144af03476d4"

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
