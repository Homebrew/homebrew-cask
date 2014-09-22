class Pharo < Cask
  version '3.0'
  sha256 'f811c7ab77240c680ac74f0d50390101cd61007f027045a9c68322f7dadc6c38'

  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  homepage 'http://www.pharo-project.org/home'

  app "Pharo#{version}.app"
end
