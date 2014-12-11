cask :v1 => 'fourpeaks' do
  version :latest
  sha256 :no_check

  url 'http://nucleobytes.com/4peaks/download'
  homepage 'http://nucleobytes.com/index.php/4peaks'
  license :unknown    # todo: improve this machine-generated value

  app '4Peaks.app'
end
