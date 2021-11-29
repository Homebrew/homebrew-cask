cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.5"

  if Hardware::CPU.intel?
    sha256 "543fa7a24c64f77d6f6ca236d0941281277a1011248fc5dbd37fb47a9d288d90"
  else
    sha256 "8d0ca252b055da28fa4543af61cdfed1564ff2fcb1519f2a6f10652ee3e84f79"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
