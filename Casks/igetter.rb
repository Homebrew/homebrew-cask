cask "igetter" do
  version "2.9.7"
  sha256 "b085f89873005bd6c9055e6b7641738009229a8e83e0719be2206ec7ab037cc5"

  url "https://www.igetter.net/search/downloads/iGetter#{version}.dmg"
  name "iGetter"
  desc "Full featured download manager and accelerator"
  homepage "https://www.igetter.net/index.html"

  livecheck do
    url "https://www.igetter.net/downloads.html"
    regex(%r{href=.*?/iGetter(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: "<= :mojave"

  app "iGetter #{version}/iGetter.app"
end
