cask "nani" do
  version "1.1.9"
  sha256 "655f777753c6a9571e58059ae9c9c84a05afedfe5ea2782ab8eced7a50fc66e8"

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
