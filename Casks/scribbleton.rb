cask :v1 => 'scribbleton' do
  version :latest
  sha256 :no_check

  url 'http://scribbleton.com/initiate_download/mac'
  name 'Scribbleton'
  homepage 'http://scribbleton.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Scribbleton.app'
end
