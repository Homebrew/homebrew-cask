cask :v1 => 'pacifist' do
  if MacOS.release <= :snow_leopard || Hardware::CPU.is_32_bit?
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.release <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.4'
    sha256 'ef29b9a325d38dd32ba2e7f5cbacc0b3f52aae6f299a61a743a55dc57fc0e4f0'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          :sha256 => '1968fd8009efc6192aa5a66e78dd002fb104a34402a22363e2702368f4c1cb64'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'
  license :commercial

  depends_on :macos => '>= :tiger'

  app 'Pacifist.app'
end
