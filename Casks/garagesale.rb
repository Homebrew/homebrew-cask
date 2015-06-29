cask :v1 => 'garagesale' do
  version '6.9.2'
  sha256 '034918633b8cac8dd2cbc0613c8ff5be29e6f5dbba909b46d29d61ee0ba1d943'

  url "https://downloads.iwascoding.com/downloads/GarageSale_#{version}.dmg"
  name 'GarageSale'
  homepage 'https://www.iwascoding.com/GarageSale/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GarageSale.app'
end
