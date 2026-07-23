cask "linguax" do
  version "2025.12,5005"
  sha256 "2978f5379bffe504383eccc6956a6580fd1f13aa6b4eb55722b87c961f8ec764"

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
