cask 'pacifist' do
  if MacOS.release <= :snow_leopard || Hardware::CPU.is_32_bit?
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.release <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.8'
    sha256 '2efd62abb8d24b2fc033f43f0fba9b684f63a689b568438ab5accd63bac8e502'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          :sha256 => '816061feffc507008c1983951eaa38e3e0fa80632ea167a11df16646c4b44980'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'
  license :commercial

  depends_on :macos => '>= :tiger'

  app 'Pacifist.app'
end
