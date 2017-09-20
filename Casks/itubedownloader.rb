cask 'itubedownloader' do
  version '6.2.9,1498780358'
  sha256 '7835755265557c0d5962838e8591e49fec23cd4166458ce7781828156e030102'

  # dl.devmate.com/com.AlphaSoft.iTubeDownloader was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.AlphaSoft.iTubeDownloader/#{version.before_comma.no_dots}/#{version.after_comma}/iTubeDownloader-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.AlphaSoft.iTubeDownloader.xml',
          checkpoint: '1672d923f9a6b9d6a8ba899a82a441f56445fb83deda3d008288712402ecaf24'
  name 'iTubeDownloader'
  homepage 'http://alphasoftware.co/'

  app 'iTubeDownloader.app'
end
