cask :v1 => 'slice' do
  version :latest
  sha256 :no_check

  url 'http://sliceeq.com/downloads/Slice.dmg'
  name 'Slice'
  homepage 'http://sliceeq.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Slice.app'
end
