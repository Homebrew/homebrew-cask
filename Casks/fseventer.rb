class Fseventer < Cask
  url 'http://www.fernlightning.com/lib/exe/fetch.php?id=software%3Afseventer%3Astart&cache=cache&media=software:fseventer:fseventer.zip'
  homepage 'http://www.fernlightning.com/doku.php?id=software:fseventer:start'
  version '2.7.6'
  sha1 'ee3604ee7286d78bd90bd278f133de71fb1d3647'
  link 'fseventer/fseventer.app'
  uninstall :script => 'fseventer/HelperToolUninstall.sh'
end
