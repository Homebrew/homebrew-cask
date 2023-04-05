cask "freesurfer" do
  version "7.3.2"
  sha256 "1c3ca7f53777ae024864cbd4ccb3b7d514e5e5bf84c4ad407521caedc822056e"

  url "https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/#{version}/freesurfer-darwin-macOS-#{version}.tar.gz"
  name "FreeSurfer"
  desc "Software suite for processing and analyzing brain MRI images"
  homepage "https://surfer.nmr.mgh.harvard.edu/"

  livecheck do
    url "https://surfer.nmr.mgh.harvard.edu/fswiki/ReleaseNotes"
    regex(/v(\d+(?:\.\d+)+)/i)
  end

  suite "freesurfer"

  caveats do
    free_license "https://surfer.nmr.mgh.harvard.edu/registration.html"
  end
end
