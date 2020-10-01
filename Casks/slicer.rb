cask "slicer" do
  version "4.10.2.28257,1028599"
  sha256 "dbaff1ef7f7c7354b1c8b9a460c77773c1f510a730d9b2f0c73e2a3106499c34"

  # slicer.kitware.com/midas3/ was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  appcast "https://github.com/Slicer/Slicer/releases.atom"
  name "3D Slicer"
  homepage "https://www.slicer.org/"

  app "Slicer.app"
end
