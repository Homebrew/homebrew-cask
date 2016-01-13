cask 'puush' do
  version :latest
  sha256 :no_check

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax',
          :checkpoint => '2beaf344f474b3368400ac090e941f8795895bc95b5849988a9c0c34fcd5b066'
  name 'puush'
  homepage 'https://puush.me/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'puush.app'
end
