cask "nani" do
  version "1.0.85"
  sha256 "852c50561a6777211da55bba901f0d47889c01eac52b26da32cc7f5c1634f723"

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
