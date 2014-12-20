cask :v1 => 'pixel-winch' do
  version :latest
  sha256 :no_check

  url 'http://ricciadams.com/try/pixel-winch'
  homepage 'http://ricciadams.com/projects/pixel-winch'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixel Winch.app'
end
