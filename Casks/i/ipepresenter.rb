cask "ipepresenter" do
  version "7.2.27"
  sha256 "b9e55003f49889a1adad5f92fb8d0dff057d73884dea887af17956eeb521a07c"

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipepresenter-#{version}-mac.dmg",
      verified: "github.com/otfried/ipe/"
  name "IpePresenter"
  desc "Make presentations from PDFs"
  homepage "https://ipepresenter.otfried.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ipepresenter[._-](\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "IpePresenter.app"

  caveats do
    requires_rosetta
  end
end
