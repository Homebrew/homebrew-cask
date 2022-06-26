cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.5"

  if Hardware::CPU.intel?
    sha256 "12074e76cc3fea547cf4d63f1e4ecbf78ec602de77309b96034f1d4680bbbc71"
  else
    sha256 "309e42b490ae8bd05d624c65298f69548a95df6bef5fb99090aa97a649dc547e"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
