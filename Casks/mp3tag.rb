cask 'mp3tag' do
  version '2.84a'
  sha256 'b4e7ac357e8359ea99492c420f019aa600bf291b65b9dd3637620732fe00502f'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"
end
