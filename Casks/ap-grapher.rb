cask :v1 => 'ap-grapher' do
  version :latest
  sha256 :no_check

  # macupdate is used because the vendor homepage is abandoned
  # (http://www.chimoosoft.com/products/apgrapher/)
  url 'https://www.macupdate.com/download/11859/APGrapher.dmg'
  homepage 'https://www.macupdate.com/app/mac/11859/ap-grapher'
  license :unknown

  app 'AP Grapher.app'

  caveats <<-EOS.undent
    Warning: #{title} has been abandoned by its author, and the
    vendor homepage is defunct.  This Cask downloads an untrusted
    copy from an alternative source.
  EOS
end
