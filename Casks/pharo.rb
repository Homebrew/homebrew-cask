class Pharo < Cask
  version '3.0'
  sha256 '2aae5efd2d6e93df29ca5e04f2ad95c22494ff3d0e27c50276c25c298c0a58b1'

  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  homepage 'http://www.pharo-project.org/home'
  license :unknown

  app "Pharo#{version}.app"
end
