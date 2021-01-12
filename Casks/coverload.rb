cask "coverload" do
  version "2.1.2-755"
  sha256 "3cd3bc5271cd11dcb363b0a76ebe6b191001ae10839cdef1ae7c56e53dc86160"

  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip",
      verified: "s3-us-west-2.amazonaws.com/coverloadapp.com/"
  name "CoverLoad"
  desc "Download high quality artwork for movies, music albums, and more"
  homepage "https://coverloadapp.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/CoverLoad-(\d+(?:\.\d+)*-\d+)\.zip}i)
  end

  app "CoverLoad.app"
end
