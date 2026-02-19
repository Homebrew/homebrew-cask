cask "nani" do
  version "1.0.66"
  sha256 "1fbb994edffdbddee11965d5af07bd6937ce34c8c5873abb23cd78313305ea27"

  url "https://nani-desktop.kiok.jp/artifacts/nani-#{version}.dmg",
      verified: "nani-desktop.kiok.jp/artifacts/"
  name "Nani Translate"
  desc "AI-powered translator"
  homepage "https://nani.now/"

  livecheck do
    url "https://nani-desktop.kiok.jp/artifacts/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Nani.app"

  zap trash: "~/Library/Application Support/Nani"
end
