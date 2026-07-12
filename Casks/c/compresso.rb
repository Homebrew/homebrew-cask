cask "compresso" do
  version "0.10.0"
  sha256 "fa36d43b13d5dea92ecd78454ceb136db502d2c9f349436fa986718333b6727a"

  url "https://www.compresso.xyz/archives/compresso-#{version}.dmg"
  name "Compresso"
  desc "Offline bulk image and video compressor"
  homepage "https://www.compresso.xyz/"

  livecheck do
    url "https://www.compresso.xyz/archives/mac-version.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Compresso.app"

  zap trash: [
    "~/Library/Caches/com.lovish888.compresso",
    "~/Library/Preferences/com.lovish888.compresso.plist",
    "~/Library/Saved Application State/com.lovish888.compresso.savedState",
    "~/Library/WebKit/com.lovish888.compresso",
  ]
end
