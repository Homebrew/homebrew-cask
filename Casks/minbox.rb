cask :v1 => 'minbox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://minbox-public.s3.amazonaws.com/osx/Minbox.zip'
  appcast 'https://minbox.com/updates.xml'
  name 'Minbox'
  homepage 'https://minbox.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minbox.app'
end
