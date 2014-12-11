cask :v1 => 'hpuload' do
  version :latest
  sha256 :no_check

  url 'http://www.fernlightning.com/lib/exe/fetch.php?id=software%3Ahpuload%3Astart&cache=cache&media=software:hpuload:hpuload.dmg'
  homepage 'http://www.fernlightning.com/doku.php?id=software:hpuload:start'
  license :unknown    # todo: improve this machine-generated value

  app 'HPULoad.app'
end
