cask 'minbox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://minbox-public.s3.amazonaws.com/osx/Minbox.zip'
  appcast 'https://minbox.com/updates.xml',
          :sha256 => '76eae055966fda30faa71181eef5f48f5951aedc1d0b4ee920808d4eac3c22a3'
  name 'Minbox'
  homepage 'https://minbox.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Minbox.app'
end
