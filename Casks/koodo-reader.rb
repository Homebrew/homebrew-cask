cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.4"

  if Hardware::CPU.intel?
    sha256 "6552fa47f75e3903f813cf4831e65aa36eb735d1a0d3aba5920fe1cc06ef59e0"
  else
    sha256 "161415b0bec9fee6703cf1caff6baf2b40303683461749736fa4ff69d2903186"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
