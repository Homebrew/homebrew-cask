cask "openaudible" do
  version "3.1.2"
  sha256 "ccd7bc6f2ee23bd585c5726f4a71da73bd7682fbc804d7bb65909fb2585d32ce"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg",
      verified: "github.com/openaudible/"
  name "OpenAudible"
  desc "Open-source audible manager"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
