cask 'interarchy' do
  if MacOS.version <= :mavericks
    version '10.0.5'
    sha256 'f2ee4d644dd423b6d3abad960db44af85ca9b8338030ecbea3a5d8665e7be33f'
  else
    version '10.0.6'
    sha256 '58ba32e52413f15b75203f2aada8bb3bd366819907b221f9f717b78c6eb7f0a5'
  end

  url "https://nolobe.com/interarchy/download?v=#{version}"
  name 'Interarchy'
  homepage 'https://nolobe.com/interarchy/'

  app 'Interarchy.app'
end
