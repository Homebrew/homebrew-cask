cask "koodo-reader" do
  version "1.3.1"

  if Hardware::CPU.intel?
    sha256 "fcb0ea3690c2e0a7649314bf3e53d7096b3d85420ccd34a283b3791f2c2f7e9a"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  else
    sha256 "1539650c30a28ddef05a08818e1ecd0253ca7d583b61a004c6b0e55a5c8e1811"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-arm64.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  end

  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
