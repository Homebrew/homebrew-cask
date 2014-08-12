class Geppetto < Cask
  if Hardware::CPU.is_32_bit?
    url 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86-4.2.0-R201407250959.zip'
    sha256 '78f578ff4cf0a9eadf85cc5a821e55125ee98ab4a8e1d4f0f5d1607487314804'
  else
    url 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-4.2.0-R201407250959.zip'
    sha256 '7a09c823cea9900cb51d009f47fab69569e1d8115c6326f3e91db62714480d69'
  end
  homepage 'http://puppetlabs.github.io/geppetto/'
  version '4.2.0'
  link 'geppetto/Geppetto.app'
end
