cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.0"

  if Hardware::CPU.intel?
    sha256 "378cb8a2d2b73fae228708527f72385332ff4428bf605f8499ea1f8074a22ccb"
  else
    sha256 "e394044d1fd6a86a48a0670d33cc0a769a9a6abe984d0ca3775eae171cb312b2"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
