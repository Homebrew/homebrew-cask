cask "bunch" do
  version "1.4.0,111"
  sha256 "68daccddd80e328b722cb84ed0ca1cf86d12e75c6a62d199392fcc07a1ce3e11"

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
