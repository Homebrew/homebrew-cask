cask "editaro" do
  version "1.6.1"
  sha256 "a1fe9a2c3279a7632e0fb6e0e9239f08594fe5d6e6a2dbaa37e164516783e97e"

  url "https://github.com/kkosuge/editaro/releases/download/#{version}/Editaro-#{version}-mac.zip",
      verified: "github.com/kkosuge/editaro/"
  name "Editaro"
  homepage "https://editaro.com/"

  livecheck do
    url :url
    strategy :git
  end

  app "Editaro.app"

  zap trash: "~/Library/ApplicationSupport/Editaro"
end
