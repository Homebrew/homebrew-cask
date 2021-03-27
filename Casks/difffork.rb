cask "difffork" do
  version "1.1.9.2"
  sha256 :no_check

  url "https://dotfork.s3.amazonaws.com/DiffFork.app.zip",
      verified: "dotfork.s3.amazonaws.com/"
  appcast "http://dotfork.com/"
  name "DiffFork"
  homepage "http://dotfork.com/"

  app "DiffFork.app"
end
