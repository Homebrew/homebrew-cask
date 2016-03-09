cask 'minbox' do
  version '2.0.12'
  sha256 '3c5a6bd1888453ef6de902da9bf29f873516572d4f7ff7d7d096c5425ae9dcd2'

  url 'https://minbox.com/download'
  appcast 'https://minbox.com/updates.xml',
          checkpoint: 'd6f20222f6fca106398c29a026237661e4805106af60d373f71f17948aa5d425'
  name 'Minbox'
  homepage 'https://minbox.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minbox.app'
end
