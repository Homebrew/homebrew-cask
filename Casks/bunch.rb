cask "bunch" do
  version "1.4.4,118"
  sha256 "1c9a1bd3c224e34235dc88c03ae57fd061b089cc67c7059b4358046e3dc862de"

  url "https://brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg",
      verified: "brettterpstra.com/updates/bunch/"
  name "Bunch"
  desc "Automation tool"
  homepage "https://bunchapp.co/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
