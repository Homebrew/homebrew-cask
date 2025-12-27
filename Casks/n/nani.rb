cask "nani" do
  version :latest
  sha256 :no_check

  url "https://nani-desktop.kiok.jp/artifacts/nani-mac-latest.dmg",
      verified: "nani-desktop.kiok.jp/artifacts/"
  name "Nani"
  desc "Instant AI translation, with clear explanations"
  homepage "https://nani.now/"

  depends_on macos: ">= :monterey"

  app "Nani.app"
end
