cask "koodo-reader" do
  version "1.2.8"

  if Hardware::CPU.intel?
    sha256 "1114389bcc5854d97856cba8c19723172d043f6f28a86aafc696ed325a2ac197"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  else
    sha256 "608c51b0af111fac20ed138e448222b9112f1d1adea7a81e86d5231501153a03"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-arm64.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  end

  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
