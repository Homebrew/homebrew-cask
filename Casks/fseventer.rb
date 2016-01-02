cask 'fseventer' do
  version :latest
  sha256 :no_check

  url 'http://www.fernlightning.com/lib/exe/fetch.php?id=software%3Afseventer%3Astart&cache=cache&media=software:fseventer:fseventer.zip'
  appcast 'http://www.fernLightning.com/appcasts/fseventer.xml',
          :sha256 => '483154f2f21405fc571a4623f3ba2203510034fbcac947627e9dc8ace9deddd4'
  name 'fseventer'
  homepage 'http://www.fernlightning.com/doku.php?id=software:fseventer:start'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'fseventer/fseventer.app'

  uninstall :script => 'fseventer/HelperToolUninstall.sh'
end
