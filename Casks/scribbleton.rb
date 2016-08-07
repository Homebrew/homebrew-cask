cask 'scribbleton' do
  version :latest
  sha256 :no_check

  url 'https://scribbleton.com/initiate_download/mac'
  name 'Scribbleton'
  homepage 'https://scribbleton.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Scribbleton.app'
end
