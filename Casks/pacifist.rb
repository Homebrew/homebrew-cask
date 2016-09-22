cask 'pacifist' do
  if MacOS.version <= :snow_leopard || Hardware::CPU.is_32_bit?
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.version <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.10'
    sha256 '8905a66adcc75d33475cfa1e6789f83a1fd6da1952056671e95725d1b534143e'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          checkpoint: '11541f9dbefb04099d97228a7104e7fa290ffe0db0c703c7c89f66a8220f85de'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'
  license :commercial

  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end
