cask :v1 => 'cscreen' do
  version '2012/09'
  sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'

  url "http://www.pyehouse.com/wp-content/uploads/#{version}/cscreenIntel.dmg"
  name 'cscreen'
  homepage 'http://www.pyehouse.com/cscreen/'
  license :gratis

  binary 'cscreen'
end
