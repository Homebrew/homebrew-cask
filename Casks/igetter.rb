cask "igetter" do
  version "2.9.7"
  sha256 "b085f89873005bd6c9055e6b7641738009229a8e83e0719be2206ec7ab037cc5"

  url "https://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  appcast "https://www.igetter.net/downloads.html"
  name "iGetter"
  homepage "https://www.igetter.net/index.html"

  app "iGetter #{version}/iGetter.app"
end
