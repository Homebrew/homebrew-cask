cask "openaudible" do
  version "3.0"
  sha256 "4d61ce0fe0cf702e175d47a488bd887f7270e4182b1fcc0d538b80c0278c1536"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_mac.dmg",
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
