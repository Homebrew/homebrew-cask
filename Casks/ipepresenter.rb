cask "ipepresenter" do
  version "7.2.21"
  sha256 "ae849bbf19bfcac635226029ef198797ff042e02ecd6cfd7994d58bf56d674ff"

  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg",
      verified: "bintray.com/otfried/"
  appcast "http://ipepresenter.otfried.org/"
  name "IpePresenter"
  desc "Make presentations from PDFs"
  homepage "http://ipepresenter.otfried.org/"

  depends_on macos: ">= :yosemite"

  app "IpePresenter.app"
end
