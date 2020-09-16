cask "gifs" do
  version :latest
  sha256 :no_check

  # raw.githubusercontent.com/orta/GIFs/ was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/orta/GIFs/master/web/GIFs.app.zip"
  name "GIFs"
  desc "App for finding GIFs"
  homepage "https://github.com/orta/GIFs"

  app "GIFs.app"
end
