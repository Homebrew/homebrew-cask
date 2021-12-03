cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.8"

  if Hardware::CPU.intel?
    sha256 "3cac7b590a391bbf5940aee782072ad440676ceefba88a7eb5835ff1ef548895"
  else
    sha256 "0733eb7924997928fc9a869c15f6aaa2d6421f67a8a6a78f68a4bc2a2b1e8216"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
