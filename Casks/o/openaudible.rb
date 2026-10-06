cask "openaudible" do
  version "5.0.1"
  sha256 "e0c53c34d0f18d52dcc08ef11256877417814534b9d49031cd9efed1746fecfb"

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
