cask "koodo-reader" do
  version "1.2.7"

  if Hardware::CPU.intel?
    sha256 "ad5c839644db62cb8edbbd3b2f5aa9b74d28154bf5afe35497057bd48a35578b"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  else
    sha256 "2ec9bce429a0fa81cdd81d1c1bc1fe69dd0bc0e332ad2c42d2a3be0b704eb21e"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-arm64.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  end

  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
