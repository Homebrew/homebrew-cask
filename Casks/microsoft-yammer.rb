cask 'microsoft-yammer' do
  version :latest
  sha256 :no_check

  # aka.ms was verified as official when first introduced to the cask
  url 'https://aka.ms/yammer_desktop_mac'
  name 'Yammer for Mac'
  homepage 'https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5'

  app 'Yammer.app'
end
