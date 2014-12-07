cask :v1 => 'ioquake3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '1.36'
  sha256 'ff310471aa641cc27980055691b3e3cf5496ac262f10967c9d5052fd3815a3fc'

  url "http://ioquake3.org/files/#{version}/ioquake3%20#{version}.dmg"
  homepage 'http://ioquake3.org/'
  license :unknown

  suite 'ioquake3'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    To complete the installation of #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase}, you will have to copy the file
    'pak0.pk3' from your Quake 3 Arena installation support directory into
    ~/Applications/ioquake3/baseq3/.
  EOS
end
