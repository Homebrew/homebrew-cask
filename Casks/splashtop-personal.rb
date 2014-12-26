cask :v1 => 'splashtop-personal' do
  version '2.4.3.1'
  sha256 'a0167ad134b3134e9b3e5e0a26238aed04ef230f3cabcddd7fd0fef9d82687aa'

  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v#{version}.dmg"
  homepage 'http://www.splashtop.com/personal'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Splashtop Personal.pkg'

  uninstall :pkgutil => 'com.splashtop.stp.*'
end
