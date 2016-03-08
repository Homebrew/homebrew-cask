cask 'itsycal' do
  version '0.10.10'
  sha256 '3452b19d10e91c441ef0f218629961bbb98c41ba2b29bff14759306967551253'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/itsycal/Itsycal-#{version}.zip"
  appcast 'https://s3.amazonaws.com/itsycal/itsycal.xml',
          checkpoint: '98c525b55275fb02b4fdb4896ae2198f89fff858679b67cf031691bbd157ba72'
  name 'Itsycal'
  homepage 'http://www.mowglii.com/itsycal/'
  license :gratis

  app 'Itsycal.app'
end
