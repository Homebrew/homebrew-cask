cask "sanesidebuttons" do
  version "1.4.0"
  sha256 "f8d56421f42af599f74250229e50abf6af32afc0ecdc1afec4726fc0417bfd63"

  url "https://github.com/thealpa/SaneSideButtons/releases/download/#{version}/SaneSideButtons.dmg"
  name "SaneSideButtons"
  desc "Menu bar app that enables system-wide navigation using side mouse buttons"
  homepage "https://github.com/thealpa/SaneSideButtons"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "SaneSideButtons.app"

  zap trash: [
    "~/Library/Application Scripts/com.janhuelsmann.SaneSideButtons",
    "~/Library/Containers/com.janhuelsmann.SaneSideButtons",
    "~/Library/Preferences/com.janhuelsmann.sanesidebuttons.plist",
  ]
end
