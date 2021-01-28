cask "openaudible" do
  version "2.3.5"
  sha256 "d84297a32ce342058ba908a69d68fbae28e9fcd70c5e1cbe6d05e26f9dbdfcf4"

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
