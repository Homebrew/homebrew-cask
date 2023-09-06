cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.10"
  sha256 arm:   "77db4c0995d0c50b7fb6dd9d3fe6b3abb94c69a3c8f5b8112b26d8f0fa91b198",
         intel: "2427c347ed48575d4d2e7d81153338fc460bc61ce0668c0e38db4d69263b5dd7"

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
