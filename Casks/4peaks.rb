cask :v1 => '4peaks' do
  version :latest
  sha256 :no_check

  url 'http://nucleobytes.com/4peaks/download'
  name '4Peaks'
  homepage 'http://nucleobytes.com/index.php/4peaks'
  license :gratis

  app '4Peaks.app'
end
