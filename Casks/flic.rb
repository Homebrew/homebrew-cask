cask 'flic' do
  version '1.1.3'
  sha256 '400b1aed904b527b049af26c61aca234a6812e7f3d366ecb471a5b8fe6646ae1'

  url "https://s3.amazonaws.com/misc-scl-cdn/Flic.#{version}.zip"
  name 'Flic'
  homepage 'https://flic.io/mac-app'

  # The application is located in an directory with seems to be named after the
  # build date and is therefor not predictable
  app "#{Dir.glob('#{appdir}/FlicMac Developer Distribution */Flic.app')[0]}"

end
