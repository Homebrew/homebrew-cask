cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.6"

  if Hardware::CPU.intel?
    sha256 "11776f13a13ab6e5f5bc7eeb60d9a8cf3059f2bf17082883c44199072856d0a8"
  else
    sha256 "fe323f69039fea6139618670b6cec62c5911ef2d493b579670239f364b3ff6ba"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
