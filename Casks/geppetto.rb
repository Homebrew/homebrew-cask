class Geppetto < Cask
  if Hardware::CPU.is_64_bit?
    url 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86_64-4.1.0-R201402150632.zip'
    sha256 'a40feb885ceb901a9f59d1a75f7dc118f7e2d18c853c78ffb2f2d76d90e94ac8'
  else
    url 'https://downloads.puppetlabs.com/geppetto/4.x/geppetto-macosx.cocoa.x86-4.1.0-R201402150632.zip'
    sha256 'ca7c54e04b0cd872c062bd6d1c418b394888342b808447368924d7ecb5bb98fb'
  end
  homepage 'http://puppetlabs.github.io/geppetto/'
  version '4.1.0'
  link 'geppetto/Geppetto.app'
end
