cask :v1 => 'icursor' do
  version :latest
  sha256 :no_check

  # macupdate is used because the vendor homepage is abandoned
  # (http://www.giofx.net/GioFX/MacOS.html)
  url 'https://www.macupdate.com/download/17059/iCursor.zip'
  homepage 'https://www.macupdate.com/app/mac/17059/icursor'
  license :unknown

  app 'iCursor.app'

  caveats <<-EOS.undent
    Warning: #{title} has been abandoned by its author, and the
    vendor homepage is defunct.  This Cask downloads an untrusted
    copy from an alternative source.
  EOS
end
