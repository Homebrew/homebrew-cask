cask :v1 => 'mediafire-desktop' do
  version :latest
  sha256 :no_check

  url 'https://www.mediafire.com/?4xcr491804ncktz/'
  name 'MediaFire Desktop'
  homepage 'https://www.mediafire.com/software/desktop/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MediaFire Desktop.app'
end
