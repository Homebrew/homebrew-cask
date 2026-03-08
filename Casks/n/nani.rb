cask "nani" do
  version "1.0.71"
  sha256 "45730518590a03581ab1e700f6ffd8d29c465283fbc0e67f39c3c09e92fe9fdb"

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
