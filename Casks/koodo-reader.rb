cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.4"

  if Hardware::CPU.intel?
    sha256 "7a5ff58fa3d2e78e2c8da09070d9df6fa202198bfb6b71de06a18190a8e32be9"
  else
    sha256 "1d544d622f9d07dac51e284ccaa5bc00f51e0d3739ee60a7bb65552a975bde20"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
