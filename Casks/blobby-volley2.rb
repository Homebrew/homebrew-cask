cask "blobby-volley2" do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version "1.0"
  sha256 "6e2b1381e32607e1f452920b1fbfcb5f2393bc13e48fcc58cbcd26b8e9e70117"

  # downloads.sourceforge.net/blobby/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/blobby/blobby2-macosx-#{version}.dmg"
  appcast "https://sourceforge.net/projects/blobby/rss"
  name "Blobby Volley 2"
  homepage "https://blobby.sourceforge.io/"

  app "Blobby Volley 2.app"
end
