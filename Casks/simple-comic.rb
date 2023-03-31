cask "simple-comic" do
  version "1.9.6"
  sha256 "daf936d4eac078bce73c4b544a2f9f921e019e496aa6b35c75d201a411e2e5a2"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/App-Store-#{version}/Simple.Comic.app.zip"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  app "Simple Comic.app"

  zap trash: "~/Library/Application Support/Simple Comic"
end
