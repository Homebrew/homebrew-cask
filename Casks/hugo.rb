cask 'hugo' do
  version '0.68.3'
  sha256 '4adfa17de665e549cb37ca649818b54fd25ef9e3e26c6693097ffd86b4c17a44'

  url "https://github.com/gohugoio/hugo/releases/download/v#{version}/hugo_extended_#{version}_macOS-64bit.tar.gz"
  appcast 'https://github.com/gohugoio/hugo/releases.atom'
  name "Hugo: The world's fastest framework for building websites"
  homepage 'https://github.com/gohugoio/hugo'

  binary 'hugo'
end
