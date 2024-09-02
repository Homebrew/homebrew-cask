cask "decentr" do
  arch arm: "arm", intel: "x86"

  version "1.8.0"
  sha256 arm:   "8696a855cd466f39e2cbd5878a5402fbc6af8a8a8d8323a003a4e983ca79ba14",
         intel: "94eaf700d836f417b6f8adfb82eb412bb4ec6359764229f393c14320c0966ab2"

  url "https://decentr.net/MacOS_#{arch}_Decentr_#{version}.dmg"
  name "Decentr"
  desc "Web3 blockchain/metaverse browser"
  homepage "https://decentr.net/"

  livecheck do
    url :homepage
    regex(/href=.*?MacOS[._-]#{arch}[._-]Decentr[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Decentr.app"

  zap trash: [
    "~/Library/Application Support/Decentr",
    "~/Library/Caches/Decentr",
    "~/Library/Preferences/com.Decentr.Decentr.plist",
    "~/Library/Saved Application State/com.Decentr.Decentr.savedState",
  ]
end
