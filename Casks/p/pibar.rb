cask "pibar" do
  version "1.2.1"
  sha256 "a36a898bc4f933c700e9d42d4a589b4253b504d460bbbd63929b492f44f5c6f3"

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
