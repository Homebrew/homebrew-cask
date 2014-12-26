cask :v1 => 'infinit' do
  version :latest
  sha256 :no_check

  url 'https://download.infinit.io/macosx/installer/Infinit.dmg'
  homepage 'https://infinit.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Infinit.app'
end
