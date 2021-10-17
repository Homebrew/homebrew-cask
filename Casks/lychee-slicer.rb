cask "lychee-slicer" do
  version "3.5.1"
  sha256 "afeb2fc1fd5756a6c902900cf762cef1e4fb92f913d1247ec2bfdc89d23a616f"

  url "https://mango-lychee.nyc3.cdn.digitaloceanspaces.com/LycheeSlicer-#{version}.dmg",
      verified: "mango-lychee.nyc3.cdn.digitaloceanspaces.com"
  name "lychee-slicer"
  desc "Powerful and versatile slicer for Resin 3D printers"
  homepage "https://mango3d.io/lychee-slicer-3-for-sla-3d-printers/"

  app "LycheeSlicer.app"
end
