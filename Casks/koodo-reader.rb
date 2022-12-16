cask "koodo-reader" do
  arch arm: "-arm64"

  version "1.5.0"
  sha256 arm:   "ba0d762a88a292b4056bfa970cac6e7c75c9efa6ee87cd20e1861d7a63c7d90d",
         intel: "f4b049c266e97451bdb78814e587000361d15bc3f285d55cd24f5fb7f9d7313c"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
