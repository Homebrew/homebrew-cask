cask 'cevelop' do
  version '1.4.0'
  sha256 '9199a6e5978e608e51de95e165f13acfdec49d265fef4bf4df5b93973f6cf2ae'

  url 'https://www.cevelop.com/cevelop/downloads/cevelop-1.4.0-201603071314-macosx.cocoa.x86_64.tar.gz'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'
  license :gratis

  depends_on arch: :x86_64

  app 'Cevelop.app'
end
