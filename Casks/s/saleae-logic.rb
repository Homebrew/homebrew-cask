cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.13"
  sha256 arm:   "40684a4cdac3f8d1f055c7119d031ffbd83e670f563f8ab827df55fc2ebb3671",
         intel: "223c6718dcd824fa26a5360fac3e535f9854827f1f0017e834796a1832512c18"

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
