cask "freesurfer" do
  version "7.4.1"
  sha256 "9089c369a16556f9edf2cb6f7cddd4cb1e4ce7fadea12c919727aa34347c4032"

  url "https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/#{version}/freesurfer-macOS-darwin_x86_64-#{version}.tar.gz"
  name "FreeSurfer"
  desc "Software suite for processing and analyzing brain MRI images"
  homepage "https://surfer.nmr.mgh.harvard.edu/"

  livecheck do
    url "https://surfer.nmr.mgh.harvard.edu/fswiki/ReleaseNotes"
    regex(/v(\d+(?:\.\d+)+)/i)
  end

  suite "freesurfer"

  zap trash: "~/Library/Preferences/edu.harvard.mgh.nmr.FreeView.plist"

  caveats do
    requires_rosetta
    free_license "https://surfer.nmr.mgh.harvard.edu/registration.html"
  end
end
