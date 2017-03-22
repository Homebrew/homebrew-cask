cask 'onedrive' do
  version '17.3.6798.0207'
  sha256 'ead6017d367f9d15990cdccfe617adc8750d7302adfeadada353e267362c6c92'

  # oneclient.sfx.ms was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Prod/#{version}/OneDrive.pkg"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  pkg 'OneDrive.pkg'

  uninstall pkgutil: 'com.microsoft.OneDrive'
end
