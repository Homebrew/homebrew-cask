cask "koodo-reader" do
  version "1.3.2"

  if Hardware::CPU.intel?
    sha256 "dea649fb92b577721a36e4ed5e717c76f55e0b13af5ed0fd0176a0ef145cf9e5"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  else
    sha256 "d98fe82a32a7e7d32a07fa6f50c197a841a21a6f88db15f0e664e289c0df9cab"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-arm64.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  end

  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
