cask "flotato" do
  version "36,1"
  sha256 :no_check

  url "https://vendors.paddle.com/download/product/558359",
      verified: "vendors.paddle.com/download/product/"
  name "Flotato"
  desc "Tool to turn any web page into a desktop app"
  homepage "https://flotato.com/"

  deprecate! date: "2024-07-15", because: :unmaintained

  depends_on macos: ">= :high_sierra"

  app "Flotato.app"

  zap trash: [
    "/Applications/Flotato Help.app",
    "~/Library/Application Support/Flotato",
    "~/Library/Caches/com.mortenjust.flotato",
    "~/Library/HTTPStorages/com.mortenjust.flotato",
    "~/Library/HTTPStorages/com.mortenjust.flotato.binarycookies",
    "~/Library/Preferences/com.mortenjust.flotato.plist",
    "~/Library/Saved Application State/com.mortenjust.flotato.savedState",
    "~/Library/WebKit/com.mortenjust.flotato",
  ]
end
