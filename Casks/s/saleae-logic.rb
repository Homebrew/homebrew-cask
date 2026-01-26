cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.40"
  sha256 arm:   "ece6cd7e84319f87da5ba04c8362076f196a06b950938f8ec42e3e75a6d759d5",
         intel: "df8f8382203a86f33406a6f45f1418b68ca5dc05de314cf91d4ecffb7df526b3"

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
