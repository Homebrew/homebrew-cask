cask :v1 => '4peaks' do
  version :latest
  sha256 :no_check

  url 'http://nucleobytes.com/4peaks/download'
  homepage 'http://nucleobytes.com/index.php/4peaks'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app '4Peaks.app'
end
