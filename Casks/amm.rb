cask 'amm' do
  version '0.4.4'
  sha256 '7d01e568658d3f4186ed501e55734563768f3a02063c33281c716ff5988db98d'

  url "https://github.com/15cm/AMM/releases/download/v#{version}/AMM_v#{version}.dmg"
  appcast 'https://github.com/15cm/AMM/releases.atom',
          checkpoint: 'b961b8f53805616fdcd465fabe2d47df7262751ddd7edb06491d3a21ccc4e020'
  name 'AMM'
  homepage 'https://github.com/15cm/AMM'

  app 'AMM.app'
end
