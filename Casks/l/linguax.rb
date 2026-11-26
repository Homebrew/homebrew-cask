cask "linguax" do
  version "2025.12,6026"
  sha256 "b9bed29a7276a281e996ea13818ef720d51a6eb5ba6ea48e8597bff202c748a1"

  url "https://st.deepzz.com/linguax/LinguaX#{version.csv.first}.#{version.csv.second}.zip"
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
    "~/Library/Application Support/LinguaX",
    "~/Library/Caches/com.deepzz.LinguaX",
    "~/Library/Cookies/com.deepzz.LinguaX.binarycookies",
    "~/Library/HTTPStorages/com.deepzz.LinguaX",
    "~/Library/HTTPStorages/com.deepzz.LinguaX.binarycookies",
    "~/Library/Preferences/com.deepzz.LinguaX.plist",
    "~/Library/Saved Application State/com.deepzz.LinguaX.savedState",
  ]
end
