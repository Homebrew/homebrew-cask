cask "bunch" do
  version "1.4.1,112"
  sha256 "b6be8964e6e4f3372ee1353b4c86c1aa8ae93f28c5464a4818d69515be0ebc5d"

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
