cask "linguax" do
  version "2025.12,5014"
  sha256 "f2233a5509a221dcd6d6a6df33af2cef30599fa6585672612f0baf4df692313a"

  url "https://st.deepzz.com/linguax/LinguaX#{version.csv.first}.#{version.csv.second}.zip",
      verified: "st.deepzz.com/linguax/"
  name "LinguaX"
  desc "Menu-bar utility for third-party mice with smooth scrolling and mapping"
  homepage "https://linguax.app/"

  livecheck do
    url "https://st.deepzz.com/linguax/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "LinguaX.app"

  zap trash: [
    "~/Library/Application Support/com.deepzz.LinguaX",
    "~/Library/Caches/com.deepzz.LinguaX",
    "~/Library/Cookies/com.deepzz.LinguaX.binarycookies",
    "~/Library/HTTPStorages/com.deepzz.LinguaX",
    "~/Library/HTTPStorages/com.deepzz.LinguaX.binarycookies",
    "~/Library/Preferences/com.deepzz.LinguaX.plist",
    "~/Library/Saved Application State/com.deepzz.LinguaX.savedState",
  ]
end
