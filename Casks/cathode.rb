cask :v1 => 'cathode' do
  version '2.1.3'
  sha256 'b6074daf33e6947786fff1fe6f5df729721427aa827ef21d93db5640bd0162d0'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/cjcaufield/products/cathode/cathode_#{version.gsub('.','')}.zip"
  name 'Cathode'
  homepage 'http://www.secretgeometry.com/apps/cathode'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cathode.app'
end
