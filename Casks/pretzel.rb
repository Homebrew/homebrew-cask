cask "pretzel" do
  version "2.2.4"
  sha256 "842bb214056f95e0dea18b55929dd84ab02242fd96887a2b6baec07dd62b1ab9"

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  name "Pretzel"
  homepage "https://www.pretzel.rocks/"

  livecheck do
    url "https://download.pretzel.rocks/latest-mac.yml"
    strategy :electron_builder
  end

  app "Pretzel.app"
end
