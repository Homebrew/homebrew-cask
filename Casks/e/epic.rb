cask "epic" do
  arch arm: "arm"

  version "133.0.6943.127"
  sha256 arm:   "c28391578f60c4d55ca1c73215464d75a53799682365ddae6690d98f7f75a5d7",
         intel: "1c939b65201febf3a3fe1d5d95d58a7f9c630f681635d5254bf5511ebd1a4237"

  url "https://cdn.epicbrowser.com/mac#{version.major}#{arch}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(%r{href=.*?/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Epic.app"

  zap trash: [
    "~/Library/Application Support/HiddenReflex/Epic",
    "~/Library/Preferences/com.hiddenreflex.Epic.plist",
    "~/Library/Saved Application State/com.hiddenreflex.Epic.savedState",
  ]
end
