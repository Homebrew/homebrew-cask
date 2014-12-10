cask :v1 => 'multibrowser' do
  version :latest
  sha256 :no_check

  # macupdate is the official download host per the vendor homepage
  url 'https://www.macupdate.com/download/33861/MultiBrowser.dmg'
  homepage 'https://sites.google.com/site/tesseractsoftware/multibrowser'
  license :unknown    # todo: improve this machine-generated value

  app 'MultiBrowser.app'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    Warning: #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} has been abandoned by its author, and the
    vendor homepage is defunct.  This Cask downloads an untrusted
    copy from an alternative source.
  EOS
end
