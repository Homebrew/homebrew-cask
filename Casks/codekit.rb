cask 'codekit' do
  version '3.0.4-25479'
  sha256 'e9325debe9914a04ba331225bd06b21927b5f8ae4238586d69e4a5d3a6089593'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '2786625eeac0eb7b1a594d0f6fe8b9eb6496c9ab40a36bcd26642f0c7bf75252'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'
end
