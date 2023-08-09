cask "simple-comic" do
  version "1.9.7"
  sha256 "77957b74391ca924b2e4631b8407bdf20d44a97401606dee4cba84d0d5552572"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/App-Store-#{version}/Simple.Comic.zip"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  app "Simple Comic.app"

  zap trash: "~/Library/Application Support/Simple Comic"
end
