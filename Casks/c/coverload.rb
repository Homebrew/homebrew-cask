cask "coverload" do
  version "2.4.0-800"
  sha256 "83de72b91cd9d04047533cbd27e93de18685b26a0d054cad53b80c56ad3647d4"

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

  zap trash: [
    "~/Library/Application Scripts/com.happeningstudios.coverload",
    "~/Library/Containers/com.happeningstudios.coverload",
  ]
end
