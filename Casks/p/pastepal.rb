cask "pastepal" do
  version "2.21.5"
  sha256 "7897a2cfd83e4b5cda51ac0cde4ecb576af3b0e5c6e593cc5509a42f2f2828be"

  url "https://github.com/IndieGoodies/PastePal/releases/download/#{version}/PastePal.zip"
  name "PastePal"
  desc "Universal clipboard manager"
  homepage "https://indiegoodies.com/pastepal"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PastePal.app"

  zap trash: [
    "~/Library/Application Support/com.onmyway133.PastePal",
    "~/Library/Caches/com.onmyway133.PastePal",
    "~/Library/HTTPStorages/com.onmyway133.PastePal",
    "~/Library/Preferences/com.onmyway133.PastePal.plist",
    "~/Library/Saved Application State/com.onmyway133.PastePal.savedState",
  ]
end
