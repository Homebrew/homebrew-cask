cask :v1 => 'pixate-studio' do
  version :latest
  sha256 :no_check

  url 'http://cdn.pixate.com/downloads/studio/latest/PixateStudio.zip'
  name 'Pixate'
  homepage 'http://www.pixate.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixate Studio.app'
end
