cask 'cuppa' do
  version '1.8.2'
  sha256 'cf1ce3129044cf588e83f8030aef4c30a01859d82265a3e938501e8e2f1ca44c'

  url "https://www.nathanatos.com/software/downloads/Cuppa-#{version}.zip"
  appcast 'https://www.nathanatos.com/software/cuppa.xml'
  name 'Cuppa'
  homepage 'https://www.nathanatos.com/software/'

  app 'Cuppa.app'
end
