cask "ipepresenter" do
  version "7.2.20"
  sha256 "06a3eae1a8be9009c5e50b9a79821bbb401efd0d73068a29d5033241dcf3abab"

  # bintray.com/otfried/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg"
  appcast "http://ipepresenter.otfried.org/"
  name "IpePresenter"
  desc "Make presentations from PDFs"
  homepage "http://ipepresenter.otfried.org/"

  depends_on macos: ">= :yosemite"

  app "IpePresenter.app"
end
