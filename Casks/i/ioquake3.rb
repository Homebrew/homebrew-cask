cask "ioquake3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.36"
  sha256 :no_check

  url "https://files.ioquake3.org/macOS.zip"
  name "ioquake3"
  desc "First person shooter engine"
  homepage "https://ioquake3.org/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "ioquake3.app"

  caveats <<~EOS
    To complete the installation of #{token}, you will have to copy the file
    'pak0.pk3' from your Quake 3 Arena installation support directory into

    #{appdir}/ioquake3/baseq3/ or ~/Library/Application Support/Quake3/baseq3/

    and download patch data from https://ioquake3.org/extras/patch-data/
  EOS
end
