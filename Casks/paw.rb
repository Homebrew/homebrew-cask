cask 'paw' do
  version '2.2.9'
  sha256 '6f30f1867424dbf304ec14d620f09d989337dd3080dad54920c0122082ea8cc4'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
