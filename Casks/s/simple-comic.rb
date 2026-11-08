cask "simple-comic" do
  version "1.11.0"
  sha256 "2ed7f3e86f5c8c42e29f78d46183947224514d2ccac48913b6aa80aa8f634ce0"

  url "https://github.com/MaddTheSane/Simple-Comic/releases/download/App-Store-#{version}/Simple.Comic.#{version}.zip"
  name "Simple Comic"
  desc "Comic viewer/reader"
  homepage "https://github.com/MaddTheSane/Simple-Comic"

  depends_on macos: :sequoia

  app "Simple Comic.app"

  zap trash: "~/Library/Application Support/Simple Comic"
end
