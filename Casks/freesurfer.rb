cask "freesurfer" do
  version :latest
  sha256 :no_check

  url "https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/dev/freesurfer-darwin-macOS-dev.tar.gz"
  name "FreeSurfer"
  desc "Open source software suite for processing and analyzing brain MRI images"
  homepage "https://surfer.nmr.mgh.harvard.edu/"

  suite "freesurfer"

  caveats do
    free_license "https://surfer.nmr.mgh.harvard.edu/registration.html"
  end
end
