cask 'mac-cantonese-input' do
  version :latest
  sha256 '5701252f752f14454184c2a60677d5b085a11bd53f197ffecf821b10482dfdce'

  # raw.githubusercontent.com/ache051/mac_cantonese was verified as official when first introduced to the cask
  url 'https://raw.githubusercontent.com/ache051/mac_cantonese/master/mac_cantonese.inputplugin'
  name 'Mac Cantonese Input'
  homepage 'https://github.com/ache051/mac_cantonese'

  input_method 'mac-cantonese-input--latest.inputplugin'
end
