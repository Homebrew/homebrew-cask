cask "superslicer" do
  version "2.2.53.4,20201111"
  sha256 "04c07dbd71395134cc0d491d4219722aa2b9387d4a28f57b46cc52de672c2cf6"

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.before_comma}/SuperSlicer_#{version.before_comma}_macos_#{version.after_comma}.dmg"
  appcast "https://github.com/supermerill/SuperSlicer/releases.atom"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  app "SuperSlicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
