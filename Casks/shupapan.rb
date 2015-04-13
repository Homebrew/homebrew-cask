cask :v1 => 'shupapan' do
  version :latest
  sha256 :no_check

  url 'http://sunsky3s.s41.xrea.com/files/shupapan_ub.zip'
  name 'Shupapan'
  homepage 'http://sunsky3s.s41.xrea.com/shupapan/'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Shupapan.app'
end
