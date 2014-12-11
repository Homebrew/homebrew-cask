cask :v1 => 'arduino-galileo' do
  version '1.5.3'
  sha256 '8fafc626fb7d0918d7f4ddb98d59823c0fcc9b3aeb8e1d252ae9688b4095c153'

  url "http://downloadmirror.intel.com/23171/eng/Intel_Galileo_Arduino_SW_#{version}_on_MacOSX%20_v1.0.0.zip"
  homepage 'https://communities.intel.com/docs/DOC-22226'
  license :unknown    # todo: improve this machine-generated value

  app 'Arduino.app'
end
