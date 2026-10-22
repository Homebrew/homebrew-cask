cask "nani" do
  version "1.1.14"
  sha256 "fad0da8a3764456fe1126a47e7db40646f2c5999daedcb25244f85a0e73e7acc"

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
