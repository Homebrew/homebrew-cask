cask "dropshelf" do
  version "1729"
  sha256 "452ed83a900eb989a0a5e114fa31bc0eee32da8b71b55eb6ba4ad420c72f6ca9"

  url "https://pilotmoon.com/downloads/beta/Dropshelf-build-#{version}.zip"
  name "Dropshelf"
  desc "Drag and drop helper app"
  homepage "https://pilotmoon.com/dropshelf/"

  livecheck do
    url :homepage
    regex(/href=.*?Dropshelf-build-(\d+)\.zip/i)
  end

  app "Dropshelf.app"
end
