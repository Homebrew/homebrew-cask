cask "koodo-reader" do
  version "1.2.9"

  if Hardware::CPU.intel?
    sha256 "9bc446735f2d04d9f3bd2f21124f6e6f3c92c5ed43af2f2196666dab6a0e4b2e"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  else
    sha256 "8d3e5c9a6442dbe9727eaef070c86464c37fd34f63f52c3f36cdf9943df0a7b9"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-arm64.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  end

  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
