cask "pretzel" do
  version "0.0.19"
  sha256 "c3d91a4db3b3fe8fd64db9ed037e568b324dc6276efdd7f3b586272222f027a9"

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  appcast "https://download.pretzel.rocks/latest-mac.json"
  name "Pretzel"
  homepage "https://www.pretzel.rocks/"

  app "Pretzel.app"
end
