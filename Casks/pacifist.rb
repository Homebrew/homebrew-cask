cask :v1 => 'pacifist' do
  if MacOS.release <= :snow_leopard || Hardware::CPU.is_32_bit?
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.release <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.5'
    sha256 '0e74fdfe20560c891078976e1fc563d4bff3e4d7b29669b96ba251de85fa8865'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          :sha256 => '695bd3911774d3f6dcba7111d9f31846a915da96a850cfceb19d10c916d0925f'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'
  license :commercial

  depends_on :macos => '>= :tiger'

  app 'Pacifist.app'
end
