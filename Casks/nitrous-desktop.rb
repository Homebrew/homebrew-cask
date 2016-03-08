cask 'nitrous-desktop' do
  version :latest
  sha256 :no_check

  url 'https://www.nitrous.io/mac/NitrousDesktop-latest.zip'
  name 'Nitrous Desktop'
  homepage 'https://www.nitrous.io/mac'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Nitrous Desktop.app'
end
