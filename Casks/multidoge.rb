cask :v1 => 'multidoge' do
  version '0.1.2'
  sha256 'e6639dac77df7a6ea34ce086d68dedda98d8537bd31d32b17598243e26122bcc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/langerhans/multidoge/releases/download/v#{version}/multidoge-#{version}.dmg"
  name 'MultiDoge'
  homepage 'http://multidoge.org/'
  license :oss

  app 'MultiDoge.app'
end
