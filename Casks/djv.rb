cask "djv" do
  version "1.3.0"
  sha256 "5702e1a084377e0c0486b68c0fb5014b4e7aa3f4dbcd61bd489359859ad7589f"

  # downloads.sourceforge.net/djv/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/djv/djv-stable/#{version}/DJV-#{version}-Darwin.dmg"
  appcast "https://sourceforge.net/projects/djv/rss?path=/djv-stable"
  name "DJV Imaging"
  homepage "https://djv.sourceforge.io/"

  app "DJV.app"
end
