cask 'mountain' do
  version '1.6.3'
  sha256 '3967260967c02468a95e561edd5ac661d811d78b4dcae351e753103c46ea1011'

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml',
          checkpoint: '1c613f4a29219294a2901b980eabe512053949952bed09b42e95754947b9ab62'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on macos: '>= :snow_leopard'

  app 'Mountain.app'
end
