cask "goxel" do
  version "0.11.0"
  sha256 "4877eb6dad13fcccd6816f599312d6a1619634458c69c8465a1cf7cef0d675c1"

  url "https://github.com/guillaumechereau/goxel/releases/download/v#{version}/goxel-#{version}-mac.zip",
      verified: "https://github.com/guillaumechereau/goxel"
  name "goxel"
  desc "Open Source Voxel Editor"
  homepage "https://goxel.xyz/"

  app "goxel.app"
end
