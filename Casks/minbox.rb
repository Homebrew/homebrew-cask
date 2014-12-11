cask :v1 => 'minbox' do
  version :latest
  sha256 :no_check

  url 'https://minbox-public.s3.amazonaws.com/osx/Minbox.zip'
  appcast 'https://minbox.com/updates.xml'
  homepage 'https://minbox.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Minbox.app'
end
