cask :v1 => 'nitrous-desktop' do
  version :latest
  sha256 :no_check

  url 'https://www.nitrous.io/mac/NitrousDesktop-latest.zip'
  homepage 'https://www.nitrous.io/mac'
  license :unknown

  app 'Nitrous Desktop.app'
end
