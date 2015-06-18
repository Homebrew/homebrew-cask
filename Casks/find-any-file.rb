cask :v1 => 'find-any-file' do
  version '1.8.9'
  sha256 'fde3cd23b38f5baa626f557ac40148795a5afee6cc84ecb28b74b439bdae0189'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://files.tempel.org.s3.amazonaws.com/FindAnyFile_#{version}.zip"
  name 'Find Any File'
  homepage 'http://apps.tempel.org/FindAnyFile/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Find Any File.app'
end
