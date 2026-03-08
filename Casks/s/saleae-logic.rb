cask "saleae-logic" do
  arch arm: "arm64", intel: "x64"

  version "2.4.42"
  sha256 arm:   "87106cd65e7ae8ada053dfbf35922ef1b3d97953bdc3c78d76e13920edfde238",
         intel: "ff4b979fda1ac55242bc15edfd3a3b65c2161944827f6d8cd22a5d11ace3c3b5"

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
