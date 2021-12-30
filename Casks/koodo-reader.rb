cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.9"

  if Hardware::CPU.intel?
    sha256 "7d8b4dd876340d71d8d45857fb9b5645ebae229cd4422f428b1d6611ce480004"
  else
    sha256 "3d540bc4991f72c79d35f7858ceca23cdff8b822d3c069f767465261918c0a31"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
