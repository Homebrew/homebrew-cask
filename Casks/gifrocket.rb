cask "gifrocket" do
  version "0.1.2"
  sha256 "c5407c9caad8c038f604d35da9a6554dede79611daaf5174116ea9517a704593"

  url "https://www.gifrocket.com/Gifrocket.#{version}.zip"
  name "Gifrocket"
  desc "Tool to create GIFs from videos"
  homepage "https://www.gifrocket.com/"

  livecheck do
    url :homepage
    regex(/href=.*?Gifrocket.v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Gifrocket.app"
end
