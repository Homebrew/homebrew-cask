cask 'snagit' do
  if MacOS.version == :leopard
    version '1.0.4'
    sha256 'bfefc1c351485bffa01b7961685120306eb7624ec3ef63ba2b6d8049c846cd07'
    url "https://download.techsmith.com/snagitmac/enu/#{version.no_dots}/snagit.dmg"
  elsif MacOS.version <= :lion
    version '2.1.7'
    sha256 'c10e9eefc76addfe559809044bf47b600da2f19bb007ff0ed099a383fbd551a7'
    url "https://download.techsmith.com/snagitmac/enu/#{version.no_dots}/snagit.dmg"
  elsif MacOS.version == :mountain_lion
    version '3.2.3'
    sha256 '4fe9068e3bfafadb6f8760f381da0d89c9057ef0444ba726f7588676864807e2'
    url "https://download.techsmith.com/snagitmac/enu/#{version.no_dots}/snagit.dmg"
  elsif MacOS.version == :mavericks
    version '3.3.7'
    sha256 '4a0f3f9209011c70d5e3698e0b75d6cff73c0fb98d61d90aedd5884b0463ec3a'
    url "https://download.techsmith.com/snagitmac/enu/#{version.no_dots}/snagit.dmg"
  elsif MacOS.version == :yosemite
    version '4.0.3'
    sha256 '73dce90775e417933a30d2d625861b858410d3f14011909d702c97461078fc69'
    url "https://download.techsmith.com/snagitmac/enu/#{version.no_dots}/snagit.dmg"
  else
    version :latest
    sha256 :no_check
    url 'https://download.techsmith.com/snagitmac/enu/Snagit.dmg'
  end

  name 'Snagit'
  homepage 'https://www.techsmith.com/snagit.html'

  app 'Snagit.app'
end
