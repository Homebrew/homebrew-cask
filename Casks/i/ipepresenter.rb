cask "ipepresenter" do
  arch arm: "arm", intel: "intel"

  version "7.2.28"
  sha256 arm:   "e2a699e65248595a6e31abea0766cb74c9b58ddd8ccb3a9bc890e000b48fb699",
         intel: "2de5402c14cc8bbfcc3f6ea45a3712c5cfac928aeabf506d0673aecbb6884ff7"

  url "https://github.com/otfried/ipe/releases/download/v#{version}/ipepresenter-#{version}-mac-#{arch}.dmg",
      verified: "github.com/otfried/ipe/"
  name "IpePresenter"
  desc "Make presentations from PDFs"
  homepage "https://ipepresenter.otfried.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ipepresenter[._-](\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg/i)
  end

  app "IpePresenter.app"
end
