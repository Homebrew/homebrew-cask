cask "bunch" do
  version "1.4.5,124"
  sha256 "c5c646fd7f676691b776a370391fa548ea9757cb8c45b89e68ad72fcdc0f5875"

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
