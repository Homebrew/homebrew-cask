class Fseventer < Cask
  url 'http://www.fernlightning.com/lib/exe/fetch.php?id=software%3Afseventer%3Astart&cache=cache&media=software:fseventer:fseventer.zip'
  homepage 'http://www.fernlightning.com/doku.php?id=software:fseventer:start'
  version 'latest'
  no_checksum
  link 'fseventer/fseventer.app'
  uninstall :script => 'fseventer/HelperToolUninstall.sh'
end
