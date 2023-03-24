cask "simple-comic" do
  version "1.9.5"
  sha256 "ff9bce3fa518e568cad3eba2112e54a6b831cc9b7c017cb203c8b07fcf95bdab"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/App-Store-#{version}/Simple.Comic.#{version}.zip"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  app "Simple Comic.app"

  zap trash: "~/Library/Application Support/Simple Comic"
end
