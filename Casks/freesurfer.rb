cask "freesurfer" do
  version "7.4.0"
  sha256 "b62602302ca595c9a5e48e4567084dd25ab138f4e27574802178c87ac431915f"

  url "https://surfer.nmr.mgh.harvard.edu/pub/dist/freesurfer/#{version}/freesurfer-darwin-macOS-#{version}.tar.gz"
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
    free_license "https://surfer.nmr.mgh.harvard.edu/registration.html"
  end
end
