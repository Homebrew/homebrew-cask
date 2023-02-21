cask "blocs" do
  version "5.0.6"
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
end
