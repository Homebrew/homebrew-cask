cask "superslicer" do
  version "2.3.55.2,20201124"
  sha256 "321fc71b53656d23a5481433c60a59d4412a723c09d08e7a61572bfa8f28d4b0"

  url "https://github.com/supermerill/SuperSlicer/releases/download/#{version.before_comma}/SuperSlicer_#{version.before_comma}_macos_#{version.after_comma}.dmg"
  appcast "https://github.com/supermerill/SuperSlicer/releases.atom"
  name "SuperSlicer"
  desc "Convert 3D models into G-code instructions or PNG layers"
  homepage "https://github.com/supermerill/SuperSlicer"

  app "superslicer.app"

  zap trash: "~/Library/Application Support/SuperSlicer"
end
