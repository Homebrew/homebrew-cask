cask "flameshot" do
  version "13.0.0"
  sha256 "08dea7dca72520181ae622061d40177172716890bf6154b040a67eb8ec8c698c"

  url "https://github.com/flameshot-org/flameshot/releases/download/v#{version}/Flameshot-#{version}.dmg",
      verified: "github.com/flameshot-org/flameshot/"
  name "Flameshot"
  desc "Screenshot software"
  homepage "https://flameshot.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :catalina"

  app "flameshot.app"

  zap trash: "~/.config/flameshot/flameshot.ini"

end
