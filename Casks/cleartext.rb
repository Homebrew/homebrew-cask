cask 'cleartext' do
  version '1.3.1'
  sha256 'c53860370de86d59d81eb1164df1ea17a7824333be4eb2beb52843663dbb5b27'

  url 'https://github.com/mortenjust/cleartext-mac/releases/download/1.31/Cleartext1.31.zip'
  name 'Cleartext'
  homepage 'https://github.com/mortenjust/cleartext-mac'
  license :mit # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cleartext.app'
end
