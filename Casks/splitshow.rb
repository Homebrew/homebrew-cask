cask :v1 => 'splitshow' do
  version '0.9.1'
  sha256 'd82b4f4d69dec6307901747018841e4617bfaa411acc83e43af75ca7d8b80a04'

  url "https://splitshow.googlecode.com/files/SplitShow_v#{version}.dmg"
  homepage 'https://code.google.com/p/splitshow/'
  license :mit

  app 'SplitShow.app'
end
