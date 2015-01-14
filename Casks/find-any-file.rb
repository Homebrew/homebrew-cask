cask :v1 => 'find-any-file' do
  version '1.8.8'
  sha256 '3ef7b2a0f5373ac904198fb574d61d39316a0c4f6cb6740742b719bd7c842255'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://files.tempel.org.s3.amazonaws.com/FindAnyFile_#{version}.zip"
  homepage 'http://apps.tempel.org/FindAnyFile/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Find Any File.app'
end
