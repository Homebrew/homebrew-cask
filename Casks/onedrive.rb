cask 'onedrive' do
  version '17.3.6760.0105'
  sha256 '1b46614fe775aee48c9280430ab31af6d73a5b38b3e64fb1f6955c80c448aab1'

  # oneclient.sfx.ms was verified as official when first introduced to the cask
  url "https://oneclient.sfx.ms/Mac/Prod/#{version}/OneDrive.pkg"
  name 'OneDrive'
  homepage 'https://onedrive.live.com/'

  pkg 'OneDrive.pkg'

  uninstall pkgutil: 'com.microsoft.OneDrive'
end
