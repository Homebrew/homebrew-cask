cask "bunch" do
  version "1.3.6,58"
  sha256 "5f46b41e9215e789ab176332ea6c9a6efea239e4d6867cae58afe54224bdcf10"

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  name "Bunch"
  homepage "https://brettterpstra.com/projects/bunch/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
