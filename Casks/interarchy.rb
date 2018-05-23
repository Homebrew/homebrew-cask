cask 'interarchy' do
  if MacOS.version <= :mavericks
    version '10.0.5'
    sha256 'f2ee4d644dd423b6d3abad960db44af85ca9b8338030ecbea3a5d8665e7be33f'
  else
    version '10.0.7'
    sha256 'c1f8fbb9add4d134123d72b80d1d04540d38157f7c51478cb9efb0e88138c090'
  end

  url "https://nolobe.com/interarchy/download?v=#{version}"
  name 'Interarchy'
  homepage 'https://nolobe.com/interarchy/'

  app 'Interarchy.app'
end
