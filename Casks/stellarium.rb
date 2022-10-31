cask "stellarium" do
  version "1.1"

  if MacOS.version <= :catalina
    sha256 "f3b6b4cbcb7322c6c5d3ff861ed3fde4d261eb03e7c8a197714874ee570a8769"

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
