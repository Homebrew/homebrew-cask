cask "pibar" do
  version "1.2"
  sha256 "1495ec25459cbaa2cf77d9f7ee8a1425639e2fa9a38592367f171ab6ad367f3e"

  url "https://amiantos.s3.amazonaws.com/PiBar-#{version}.zip",
      verified: "amiantos.s3.amazonaws.com/"
  name "PiBar"
  desc "Pi-hole(s) management in the menu bar"
  homepage "https://github.com/amiantos/pibar"

  # The GitHub release descriptions contain a link to the AWS zip file, so we
  # check releases instead of Git tags.
  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "PiBar.app"

  zap trash: [
    "~/Library/Application Scripts/net.amiantos.PiBar",
    "~/Library/Containers/net.amiantos.PiBar",
  ]
end
