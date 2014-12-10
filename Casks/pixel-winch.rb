cask :v1 => 'pixel-winch' do
  version :latest
  sha256 :no_check

  url 'http://ricciadams.com/try/pixel-winch'
  homepage 'http://ricciadams.com/projects/pixel-winch'
  license :unknown    # todo: improve this machine-generated value

  app 'Pixel Winch.app'
end
