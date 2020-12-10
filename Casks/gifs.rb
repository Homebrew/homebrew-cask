cask "gifs" do
  version "1.0.3"
  sha256 :no_check

  url "https://raw.githubusercontent.com/orta/GIFs/master/web/GIFs.app.zip",
      verified: "raw.githubusercontent.com/orta/GIFs/"
  name "GIFs"
  desc "App for finding GIFs"
  homepage "https://github.com/orta/GIFs"

  app "GIFs.app"
end
