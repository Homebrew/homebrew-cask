cask "ipepresenter" do
  version "7.2.22"
  sha256 "f95fc939a4171049a21cd143ab915e859bdec7f7a6fa22c5909e83195819c97f"

  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg",
      verified: "bintray.com/otfried/"
  appcast "http://ipepresenter.otfried.org/"
  name "IpePresenter"
  desc "Make presentations from PDFs"
  homepage "http://ipepresenter.otfried.org/"

  depends_on macos: ">= :yosemite"

  app "IpePresenter.app"
end
