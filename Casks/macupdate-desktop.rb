cask 'macupdate-desktop' do
  version '6.0.9'
  sha256 '82f8b1bc8d9ed5d3881a8ca618df146fbb82634ecca4e5aac8f96ad65389e7c4'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'http://www.macupdate.com/desktop/updates.xml',
          :checkpoint => '1f3035897c5623b9037c8a51483ea907c17ac43b6c89982d7773dcf15eb73235'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :freemium

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
