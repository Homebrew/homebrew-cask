cask "livereload" do
  version "2.3.84"
  sha256 "1c915d4956177cfa5981896cb060fd00743f3d74157ad4e189901d0123fd8c7f"

  url "http://download.livereload.com/LiveReload-#{version}.zip"
  name "LiveReload"
  homepage "http://livereload.com/"

  livecheck do
    url "http://livereload.com/mac/"
    regex(/href=.*?LiveReload[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "LiveReload.app"
end
