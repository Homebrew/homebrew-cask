cask "nani" do
  version "1.0.90"
  sha256 "f2282502cccaff64597c27fb19908192d976a30c01f63b9cc76eb59b5a607968"

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
  depends_on macos: :monterey

  app "Nani.app"

  zap trash: "~/Library/Application Support/Nani"
end
