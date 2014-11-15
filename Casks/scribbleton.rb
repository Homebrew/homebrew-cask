cask :v1 => 'scribbleton' do
  version :latest
  sha256 :no_check

  url 'http://scribbleton.com/download/mac'
  homepage 'http://scribbleton.com/'
  license :unknown

  app 'Scribbleton.app'
end
