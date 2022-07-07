cask "ipepresenter" do
  version "7.2.24"
  sha256 "916217671a92de7600ff92de513ce1f62787b52039478e66fc79ef6e2c2c25ba"

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
end
