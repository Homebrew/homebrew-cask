cask :v1 => 'stattransfer' do
  version '12'
  sha256 '2559dffffd73f996604860e6fbdf2fd3ef4903bf8a37acc6016b6ea52affebd2'

  url 'http://www.stattransfer.com/downloads/stdemo.dmg'
  homepage 'https://stattransfer.com/'
  license :commercial

  pkg "st_installer_v#{version}.pkg"

  uninstall :pkgutil => 'com.circlesys.pkg'
end
