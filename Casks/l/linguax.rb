cask "linguax" do
  version "2025.12,4866"
  sha256 "9474b6766962045d07cb8b77d7a79d4473e32cf5dea4df3deac8e50308c585e9"

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
