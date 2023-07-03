cask "decentr" do
  arch arm: "Arm64", intel: "Intel"

  version "1.5.1"
  sha256 arm:   "f075bbd50c38390e028e8ae83300ead2e8867f6c75ef9061a55fa6fd3b827852",
         intel: "39c3e8432c2795a5e0c5bd99a3459c516b9b574cf8f9a7697bc3385552ef480d"

  url "https://decentr.net/MacOS_#{arch}_Decentr_#{version}.zip"
  name "Decentr"
  desc "Web3 blockchain/metaverse browser"
  homepage "https://decentr.net/"

  livecheck do
    url :homepage
    regex(/href=.*?MacOS[._-]#{arch}[._-]Decentr[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Decentr.app"

  zap trash: [
    "~/Library/Application Support/Decentr",
    "~/Library/Caches/Decentr",
    "~/Library/Preferences/com.Decentr.Decentr.plist",
    "~/Library/Saved Application State/com.Decentr.Decentr.savedState",
  ]
end
