cask "koodo-reader" do
  arch arm: "-arm64"

  version "1.4.9"
  sha256 arm:   "2051f9cee01fa80e031670ba3cfa0fe740ba5dd6a514dada6ad74b8888734b21",
         intel: "432f35c97d28af2deca2ac9ef819b426bee49a26e48c4db0c3efb1fff459960b"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
