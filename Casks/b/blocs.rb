cask "blocs" do
  version "5.2.9"
  sha256 "326c8698ef845c177184dd41900f7697da05e58fcf6492c92f1db02c266866a7"

  url "https://blocsapp.com/download/archives/blocs-#{version.major}/Blocs#{version}.zip"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  livecheck do
    url "https://blocsapp.com/update/v#{version.major}/info.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"
  container nested: "Blocs/Blocs-#{version.major}.dmg"

  app "Blocs.app"

  zap trash: [
    "~/Library/Application Support/Blocs *",
    "~/Library/Application Support/Blocs",
    "~/Library/Caches/com.cazoobi.Blocs-*",
    "~/Library/HTTPStorages/com.cazoobi.Blocs-*",
    "~/Library/HTTPStorages/com.cazoobi.Blocs-*.binarycookies",
    "~/Library/Preferences/com.cazoobi.Blocs-*.plist",
    "~/Library/Saved Application State/com.cazoobi.Blocs-*.savedState",
  ]
end
