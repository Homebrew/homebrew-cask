cask "openaudible" do
  version "5.0"
  sha256 "0017c4f36fd5959afeb43cd4c15c4e5e3071d762ab61f2ee150bc0bb40b64425"

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
