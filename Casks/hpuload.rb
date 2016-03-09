cask 'hpuload' do
  version :latest
  sha256 :no_check

  url 'http://www.fernlightning.com/lib/exe/fetch.php?id=software%3Ahpuload%3Astart&cache=cache&media=software:hpuload:hpuload.dmg'
  name 'HPULoad'
  homepage 'http://www.fernlightning.com/doku.php?id=software:hpuload:start'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HPULoad.app'
end
