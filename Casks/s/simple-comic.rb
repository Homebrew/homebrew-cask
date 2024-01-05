cask "simple-comic" do
  version "1.9.8"
  sha256 "4346ad5fe036ce7f37831d9a7e1e4ee4a1cd3f2fae64b92ca9a0cd028f95d545"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/App-Store-#{version}/Simple.Comic.#{version}.zip"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  app "Simple Comic.app"

  zap trash: "~/Library/Application Support/Simple Comic"
end
