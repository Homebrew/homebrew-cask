cask :v1 => 'evasi0n' do
  version '1.0.7'
  sha256 '653cd14f25e2b2819f189216c6e920c13feb82d8d3a94c8f0e3949793aa831a2'

  # box.com is the official download host per the vendor homepage
  url 'https://evad3rs.box.com/shared/static/gu7bfneoh85aajgic0xp.dmg'
  name 'evasi0n7'
  homepage 'http://evasi0n.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'evasi0n 7.app'
end
