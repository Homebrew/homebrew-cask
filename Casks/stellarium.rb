cask "stellarium" do
  version "1.1"

  if MacOS.version <= :catalina
    sha256 "92649cdc75b2135a62faaf85f4b1617c8c8c850f160c8191f627cd32e1147ec2"

    url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}-x86_64.zip",
        verified: "github.com/Stellarium/stellarium/"
  else
    sha256 "3225237eeb762bb45eea356df0b2054f2bbf1c34b1235b86ce3777a74916a2f6"

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
