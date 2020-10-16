cask "icab" do
  version "6.0.4"
  sha256 "7a77b5c5efe846ea36b524db0e50b6794e5f4e0d3948ca8d22676661d89603bf"

  # icab.clauss-net.de/ was verified as official when first introduced to the cask
  url "http://icab.clauss-net.de/icab/iCab_#{version}.zip"
  appcast "http://www.icab.de/download.html",
          must_contain: version.major_minor
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  depends_on macos: ">= :high_sierra"

  app "iCab #{version}/iCab.app"
end
