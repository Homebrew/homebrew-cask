cask 'clocker' do
  version '1.5.1'
  sha256 'd9003079b1c2451932281afab9742943897b0b4015181cc7e1ed1c6c3651db84'

  # github.com/abhishekbanthia/Clocker was verified as official when first introduced to the cask
  url "https://github.com/abhishekbanthia/Clocker/releases/download/v#{version}/Clocker.zip"
  name 'Clocker'
  homepage 'https://abhishekbanthia.com/Clocker'

  app 'Clocker.app'
end
