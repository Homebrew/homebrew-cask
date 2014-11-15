cask :v1 => 'serialcloner' do
  version '2.6.1'
  sha256 '8027731f0ed031bb0c40009d9f5237fb73d66a3ef97029024811aa41ae873aae'

  url "http://serialbasics.free.fr/Serial_Cloner-Download_files/SerialCloner#{version.sub(%r{^(\d+)\.(\d+).*},'\1-\2')}.dmg"
  homepage 'http://serialbasics.free.fr/Serial_Cloner.html'
  license :unknown

  app "SerialCloner#{version.sub(%r{^(\d+)\.(\d+).*},'\1-\2')}/SerialCloner #{version.gsub('.','-')}.app"
end
