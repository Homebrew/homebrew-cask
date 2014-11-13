cask :v1 => 'slice' do
  version :latest
  sha256 :no_check

  url 'http://sliceeq.com/downloads/Slice.dmg'
  homepage 'http://sliceeq.com/'
  license :unknown

  app 'Slice.app'
end
