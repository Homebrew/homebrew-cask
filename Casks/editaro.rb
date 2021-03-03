cask "editaro" do
  version "1.7.0"
  sha256 "550588781dead96e006062ba51f8c317b7803ec6c3aaa94e6d66a4fa26613c3a"

  url "https://github.com/kkosuge/editaro/releases/download/#{version}/Editaro-#{version}-mac.zip",
      verified: "github.com/kkosuge/editaro/"
  appcast "https://github.com/kkosuge/editaro/releases.atom"
  name "Editaro"
  homepage "https://editaro.com/"

  app "Editaro.app"

  zap trash: "~/Library/ApplicationSupport/Editaro"
end
