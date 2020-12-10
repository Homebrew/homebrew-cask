cask "difffork" do
  version "1.1.9.2"
  sha256 :no_check

  # dotfork.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://dotfork.s3.amazonaws.com/DiffFork.app.zip"
  appcast "http://dotfork.com/"
  name "DiffFork"
  homepage "http://dotfork.com/"

  app "DiffFork.app"
end
