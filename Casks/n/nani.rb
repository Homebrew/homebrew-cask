cask "nani" do
  version "1.1.6"
  sha256 "7fa88b3027b6d83d970767039d40a3668b61e8d941d67dff7c61fc4b57036fb3"

  url "https://nani-desktop.kiok.jp/artifacts/nani-#{version}.dmg"
  name "Nani Translate"
  desc "AI-powered translator"
  homepage "https://nani.now/"

  livecheck do
    url "https://nani-desktop.kiok.jp/artifacts/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Nani.app"

  zap trash: "~/Library/Application Support/Nani"
end
