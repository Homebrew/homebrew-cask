cask :v1 => 'mailsmith' do
  version '2.4'
  sha256 '5a599ceb64cb5d4410a26da3029e2e2ffa3eefd1efaf317cd33344ceccb059a2'

  url "http://www.mailsmith.org/files/mailsmith-#{version.gsub('.', '')}_470.dmg"
  name 'Mailsmith'
  homepage 'http://www.mailsmith.org/'
  license :gratis

  app 'Mailsmith.app'
end
