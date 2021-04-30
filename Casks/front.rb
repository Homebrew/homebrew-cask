cask "front" do
  version "3.26.0"
  sha256 "ec465f1776033ca996c9a334fa82436f71e7570bced27297b434a51f4648aa2d"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  name "Front"
  desc "Customer communication platform"
  homepage "https://frontapp.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Front.app"
end
