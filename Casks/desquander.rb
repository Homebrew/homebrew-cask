cask 'desquander' do
  version '1.1'
  sha256 '77da8dfb4298f5a0a72b4426b2cc59768fee78eff0f6a601efa0d412417048f4'

  url "http://dl.dropbox.com/u/18000273/CocoaApps/Desquander#{version}.zip"
  name 'Desquander'
  homepage "https://dl.dropboxusercontent.com/u/18000273/Desquander/Desquander#{version.dots_to_underscores}e.html"
  license :oss

  app "Desquander#{version}.app"
end
