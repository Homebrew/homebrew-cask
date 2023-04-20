cask "blocs" do
  version "5.0.8"
  sha256 :no_check

  url "https://blocsapp.com/download/Blocs.zip"
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
    "~/Library/Application Support/Blocs",
    "~/Library/Application Support/Blocs *",
    "~/Library/Caches/com.cazoobi.Blocs-*",
    "~/Library/HTTPStorages/com.cazoobi.Blocs-*",
    "~/Library/HTTPStorages/com.cazoobi.Blocs-*.binarycookies",
    "~/Library/Preferences/com.cazoobi.Blocs-*.plist",
    "~/Library/Saved Application State/com.cazoobi.Blocs-*.savedState",
  ]
end
