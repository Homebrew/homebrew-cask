cask :v1 => 'fs-uae' do
  version '2.2.3'
  sha256 '3e949a673fb44abd8c788aa70361315fb7fb389575966dddee89f66fbda354ca'

  url "http://fs-uae.net/fs-uae/stable/#{version}/fs-uae-plus-#{version}-macosx.tar.gz"
  name 'FS-UAE'
  homepage 'http://fs-uae.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "fs-uae-#{version}-macosx/FS-UAE.app"
  app "fs-uae-#{version}-macosx/FS-UAE Launcher.app"
end
