cask "greenfoot" do
  version "3.7.1"
  sha256 "10e26c6a010896806a2a4c20bf9dba95b0d5f4bb1b8774c7a11998fc69d580f6"

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  name "Greenfoot"
  desc "Teach object orientation with Java"
  homepage "https://www.greenfoot.org/home"

  livecheck do
    url "https://www.greenfoot.org/download"
    regex(/Version:\s*(\d+(?:\.\d+)+)/i)
  end

  app "Greenfoot #{version}/Greenfoot.app"
end
