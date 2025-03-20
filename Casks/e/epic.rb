cask "epic" do
  arch arm: "arm"

  on_arm do
    version "133.0.6943.142"
    sha256 "57ebb377d26a7e53658cd4b0474a96eeac05a2be35921452ad4981a269291707"
  end
  on_intel do
    version "133.0.6943.127"
    sha256 "1c939b65201febf3a3fe1d5d95d58a7f9c630f681635d5254bf5511ebd1a4237"
  end

  url "https://cdn.epicbrowser.com/mac#{arch}#{version.major}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(%r{href=.*?/mac#{arch}\d+/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Epic.app"

  zap trash: [
    "~/Library/Application Support/HiddenReflex/Epic",
    "~/Library/Preferences/com.hiddenreflex.Epic.plist",
    "~/Library/Saved Application State/com.hiddenreflex.Epic.savedState",
  ]
end
