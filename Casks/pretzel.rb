cask "pretzel" do
  version "2.9.4"
  sha256 "3d8b59ab6790ebe87207473bbfb2180e9d7ed4e712e17dbf92c3041fbf32b906"

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  name "Pretzel"
  desc "DMCA-safe music for creators"
  homepage "https://www.pretzel.rocks/"

  livecheck do
    url "https://download.pretzel.rocks/latest-mac.yml"
    strategy :electron_builder
  end

  app "Pretzel.app"
end
