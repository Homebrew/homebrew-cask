cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.3"

  if Hardware::CPU.intel?
    sha256 "e09aec2ac4b235833f5b32d81a66eef4cd40f207d721b04a5068e74d2bedb321"
  else
    sha256 "c10862678683c1df0699010b9179289654e51bc1eac6ce857bed3b30dba4c0b2"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
