cask "greenfoot" do
  version "3.7.0"
  sha256 "ff3c80ee74d15d8152fa1fa7e0ac60b3e868b0982aaec34819f312a0205f4976"

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
