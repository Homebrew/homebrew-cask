cask :v1 => 'file-juicer' do
  version :latest
  sha256 :no_check

  url 'http://echoone.com/filejuicer/FileJuicer.dmg'
  homepage 'http://echoone.com/filejuicer/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'File Juicer.app'
end
