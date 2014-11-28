cask :v1 => 'find-any-file' do
  version '1.8.8'
  sha256 '3ef7b2a0f5373ac904198fb574d61d39316a0c4f6cb6740742b719bd7c842255'

  url "http://files.tempel.org.s3.amazonaws.com/FindAnyFile_#{version}.zip"
  homepage 'http://apps.tempel.org/FindAnyFile/'
  license :unknown

  app 'Find Any File.app'
end
