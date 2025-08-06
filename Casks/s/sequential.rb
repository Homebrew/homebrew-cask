cask "sequential" do
  version "2.1.2"
  sha256 "7a9247e8623da5b6c74b65ad6d9e0be7667b832816134393e871e584c00eee64"

  url "http://sequentialx.com/Sequential#{version}.zip"
  name "Sequential"
  desc "Displays folders and archives of images and PDF files"
  homepage "http://sequentialx.com/"

  deprecate! date: "2024-10-11", because: :unmaintained

  app "Sequential.app"

  caveats do
    requires_rosetta
  end
end
