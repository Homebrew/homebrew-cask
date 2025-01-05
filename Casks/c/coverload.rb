cask "coverload" do
  version "2.4.2-802"
  sha256 "71fe1ff60856b2f1f978006246fc3873824b5215b7a15b9abf51ad8799014321"

  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip",
      verified: "s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/"
  name "CoverLoad"
  desc "Download high quality artwork for movies, music albums, and more"
  homepage "https://coverloadapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/CoverLoad[._-]v?(\d+(?:\.\d+)+-\d+)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "CoverLoad.app"

  zap trash: [
    "~/Library/Application Scripts/com.happeningstudios.coverload",
    "~/Library/Containers/com.happeningstudios.coverload",
  ]
end
