cask :v1 => 'keycastr' do
  version '0.8.2-bezel'
  sha256 '4b613caf54e474c3b5a6ad802252787ce0b3c3451b5777c7a66214bd0bb53905'

  # github.com/lqez is the official download host per the vendor homepage
  url "https://github.com/lqez/keycastr/releases/download/#{version}/KeyCastr.zip"
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  app 'KeyCastr.app'

  accessibility_access true
end
