cask 'file-juicer' do
  version '4.64'
  sha256 '8ae0daae1764440a09fb68b2db1739e5fae2f209261efb85ce1594b77526bab5'

  url "https://echoone.com/filejuicer/FileJuicer-#{version}.zip"
  name 'File Juicer'
  homepage 'https://echoone.com/filejuicer/'

  app 'File Juicer.app'
end
