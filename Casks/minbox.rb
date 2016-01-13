cask 'minbox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://minbox-public.s3.amazonaws.com/osx/Minbox.zip'
  appcast 'https://minbox.com/updates.xml',
          :sha256 => 'c7f1dae7eea9dcd89b82a5199828e231de60c5da06848cc77544f210612cc24a'
  name 'Minbox'
  homepage 'https://minbox.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minbox.app'
end
