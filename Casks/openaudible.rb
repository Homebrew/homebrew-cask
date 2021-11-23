cask "openaudible" do
  version "3.2.2"
  sha256 "f9c229319962b10196e321cbf2e7baa13a572eeaa7b4e8697585df270b6280f6"

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
