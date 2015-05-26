cask :v1 => 'subclassed-mnemosyne' do
  version '1.1'
  sha256 'c641f423f449104615f614bedc7a54938ae67b63a97842351a3258b0a283f6b3'

  url 'http://www.subclassed.com/download/Mnemosyne.zip'
  name 'Mnemosyne'
  homepage 'http://www.subclassed.com/apps/mnemosyne/details'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mnemosyne.app'
end
