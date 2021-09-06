cask "koodo-reader" do
  version "1.3.0"

  if Hardware::CPU.intel?
    sha256 "625b5876909d3dcd4fe826caed52af9a226a70cb338b3521cb28d50370141058"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  else
    sha256 "a2c772ca1a8aae9a10c8fba585fd655c534c63959836a49b63278071070a5e18"

    url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}-arm64.dmg",
        verified: "github.com/troyeguo/koodo-reader/"
  end

  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
