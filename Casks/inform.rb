cask :v1 => 'inform' do
  version '7.6L02'
  sha256 '182134881d44b1c096af979d9cff195d33ec51d7c1f81f59a7c25d5a917d8987'

  url "http://inform7.com/download/content/6L02/I#{version.gsub('.','-')}-OSX.dmg"
  homepage 'http://inform7.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Inform.app'
end
