cask :v1 => 'macupdate-desktop' do
  version '6.0.9'
  sha256 '82f8b1bc8d9ed5d3881a8ca618df146fbb82634ecca4e5aac8f96ad65389e7c4'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'http://www.macupdate.com/desktop/updates.xml',
          :sha256 => 'cecc073acecb3a7221854fae2f629759fb59de2de2e161bf68c7f1c9800d9ca2'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
