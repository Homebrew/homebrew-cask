cask "black-light" do
  version "3.0"
  sha256 "f74395a35574e1edf27fa6e58f1b79180c946de881e9fee1733de04586989b82"

  url "https://littoral.michelf.ca/apps/black-light/black-light-#{version}.zip"
  name "Black Light"
  desc "Apply special vision effects on your screen"
  homepage "https://michelf.ca/projects/black-light/"

  livecheck do
    url :homepage
    regex(/href=.*?black-light[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "BLack Light.app"

  zap trash: [
    "~/Library/Application Scripts/com.michelf.black-light",
    "~/Library/Containers/com.michelf.black-light",
  ]
end
