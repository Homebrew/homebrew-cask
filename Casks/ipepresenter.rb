cask "ipepresenter" do
  version "7.2.26"
  sha256 "9e1cc01fdb4702da674a4cc4bed06529168f0723ec2cef7770beacfb7d64b146"

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
