cask "jmc" do
  version "0.3-beta"
  sha256 "b6e9303815d80948b80e1f94d797e1ee4ce1017940b236284930abc583ce6e41"

  url "https://github.com/jcm93/jmc/releases/download/v#{version}/jmc.app.zip"
  name "jmc"
  desc "Media organizer"
  homepage "https://github.com/jcm93/jmc"

  livecheck do
    url "https://github.com/jcm93/jmc/releases/latest"
    regex(%r{releases/tag/v?(\d+(?:\.\d+)*((?:-beta)?)*(\d+)?)}i)
  end

  app "jmc.app"
end
