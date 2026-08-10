cask "nani" do
  version "1.1.1"
  sha256 "276e71810d4d4a129f53a9705323e1d0453ed24657e2bcb2f7bbbc2fbf3f42e8"

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
