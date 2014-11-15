cask :v1 => 'fseventer' do
  version :latest
  sha256 :no_check

  url 'http://www.fernlightning.com/lib/exe/fetch.php?id=software%3Afseventer%3Astart&cache=cache&media=software:fseventer:fseventer.zip'
  appcast 'http://www.fernLightning.com/appcasts/fseventer.xml'
  homepage 'http://www.fernlightning.com/doku.php?id=software:fseventer:start'
  license :unknown

  app 'fseventer/fseventer.app'
  uninstall :script => 'fseventer/HelperToolUninstall.sh'
end
