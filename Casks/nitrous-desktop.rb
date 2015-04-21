cask :v1 => 'nitrous-desktop' do
  version :latest
  sha256 :no_check

  url 'https://www.nitrous.io/mac/NitrousDesktop-latest.zip'
  name 'Nitrous Desktop'
  homepage 'https://www.nitrous.io/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Nitrous Desktop.app'
end
