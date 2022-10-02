cask "stellarium" do
  version "1.0"

  if MacOS.version <= :catalina
    sha256 "92649cdc75b2135a62faaf85f4b1617c8c8c850f160c8191f627cd32e1147ec2"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"
  else
    sha256 "59c7ca0541322194085fcb6290d9a7637154b290b2c2ca4d504cc1bd3e2aeb72"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}-macOS.zip",
        verified: "github.com/Stellarium/stellarium/"
  end

  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
