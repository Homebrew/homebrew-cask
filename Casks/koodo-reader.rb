cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.2"

  if Hardware::CPU.intel?
    sha256 "3ff0cffc759f144e822aa14a0173c57bfa3e037b10c95cc67713a1ab9dfc99c4"
  else
    sha256 "28c127b9811f6b66cf51b4c3642c046488b8f77a092c0bd1e3aed747cac8c2b7"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
