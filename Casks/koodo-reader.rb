cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.7"

  if Hardware::CPU.intel?
    sha256 "afcace5634f004dc142a4c1183d94bd0672f850093ddd03f164053fe18e8facd"
  else
    sha256 "9fb2bd33e46403dd04ef60788d32b66c356dbe273be8f6e5ef6cbbe42bf1d29f"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
