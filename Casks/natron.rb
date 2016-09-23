cask 'natron' do
  version '2.1.3'
  sha256 'dff5e382f7ba1c27c0a284b1bfde4c4fc080e267e76fcf8a3374135faf66da3c'

  download_url = "https://downloads.natron.fr/Mac/releases/Natron-#{version}.dmg"

  # this is an idea that doesn't work. i leave it here as a combination of documentation and wish
  begin
    url download_url
  rescue
    print "Try downloading #{download_url}\n"
    print "Then move to cache:\n"
    print "  mv ~/Downloads/Natron-#{version}.dmg /Users/Guest/Library/Caches/Homebrew/Cask/natron--#{version}.dmg\n"
  end

  name 'Natron'
  homepage 'https://natron.fr/'
  license :mpl

  app 'Natron.app'
end
