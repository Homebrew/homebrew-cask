cask "coverload" do
  version "2.2.0-757"
  sha256 "ff8656a105aa315df33a0e9bfc38f1f284f26da773302dfbdd194f6b493cc73f"

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
