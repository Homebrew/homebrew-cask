cask "coverload" do
  version "2.2.1-763"
  sha256 "a8f2328b0ff8b17fbd2e91879b512f49e9cfd7ceaa9c3fbf3c9fb94ac2d7ee9d"

  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip",
      verified: "s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/"
  name "CoverLoad"
  desc "Download high quality artwork for movies, music albums, and more"
  homepage "https://coverloadapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/CoverLoad[._-]v?(\d+(?:\.\d+)+-\d+)\.zip}i)
  end

  app "CoverLoad.app"
end
