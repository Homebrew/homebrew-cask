cask :v1 => 'sevenzx' do
  version '1.7.1'
  sha256 '6be03312017fdd6e360293f94d7a529aba65dc1d86b561fd2c3f35dc3e815247'

  # macupdate is used because the vendor homepage is abandoned
  # (http://sixtyfive.xmghosting.com/products/7zx/)
  # The software itself is definitely abandoned per
  # http://www.werkema.com/2013/06/its-been-a-long-time/
  url "https://www.macupdate.com/download/20526/7zX_#{version}.-5003b6dcbb4d8.dmg"
  homepage 'http://www.macupdate.com/app/mac/20526/7zx'
  license :unknown    # todo: improve this machine-generated value

  app '7zX.app'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    Warning: #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} has been abandoned by its author, and the
    vendor homepage is defunct.  This Cask downloads an untrusted
    copy from an alternative source.
  EOS
end
