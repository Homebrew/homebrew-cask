cask 'pacifist' do
  if MacOS.release <= :snow_leopard || Hardware::CPU.is_32_bit?
    version '3.0.10'
    sha256 '86da910b133ac3b7a38d165624e2657f6286bcca76af98c80d3c34d5b3f3a851'
  elsif MacOS.release <= :lion
    version '3.2.17'
    sha256 'd38e12293bc6087ddb09275e3c5ab34faa670e87e9dd41e04a587dd387f7b1d3'
  else
    version '3.5.9'
    sha256 '30effe2572c3e4538c766c06d3dea3c03176216a8a8f9c3ce13052a913990829'
  end

  url "https://www.charlessoft.com/pacifist_download/Pacifist_#{version}.dmg"
  appcast 'https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi',
          checkpoint: '3e805dad238bf54e22be12f150f77c1c4629bb5b610fdc18e1c38d29340752d8'
  name 'Pacifist'
  homepage 'https://www.charlessoft.com/'
  license :commercial

  depends_on macos: '>= :tiger'

  app 'Pacifist.app'
end
