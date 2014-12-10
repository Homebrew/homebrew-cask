cask :v1 => 'nodebox' do
  version '3.0.39'
  sha256 '44620d6554c467863c0d68d5e90ff3edf0c7f9ab6c5614cdef2fcb54f9044fb4'

  url "https://secure.nodebox.net/downloads/NodeBox-#{version}.zip"
  homepage 'http://nodebox.net/node/'
  license :unknown    # todo: improve this machine-generated value

  app 'NodeBox.app'
end
