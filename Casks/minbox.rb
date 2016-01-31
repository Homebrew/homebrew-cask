cask 'minbox' do
  version '2.0.12'
  sha256 'a0e03e13c67af129432a5e4e463e83cfd958bd4b036035f5dcb2b3bb1944d388'

  # amazonaws.com is the official download host per the appcast feed
  url "https://minbox-public.s3.amazonaws.com/osx/Minbox#{version}.zip"
  appcast 'https://minbox.com/updates.xml',
          checkpoint: 'd6f20222f6fca106398c29a026237661e4805106af60d373f71f17948aa5d425'
  name 'Minbox'
  homepage 'https://minbox.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minbox.app'
end
