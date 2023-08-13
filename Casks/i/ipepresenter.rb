cask "ipepresenter" do
  version "7.2.28"
  sha256 "08068414c6455e85a85b9467c7773849a4987761cfab7dd0594b7183992348e8"

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
