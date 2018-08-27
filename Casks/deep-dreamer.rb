cask 'deep-dreamer' do
  version '1.0,251:1513327272'
  sha256 '4328e358c16ca381c3b1a40ada81addf57b439ba5dc1ce2e4503d3c11a44f8c2'

  # devmate.com/com.realmacsoftware.deepdreamer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.realmacsoftware.deepdreamer/#{version.after_comma.before_colon}/#{version.after_colon}/DeepDreamer-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.realmacsoftware.deepdreamer.xml'
  name 'Deep Dreamer'
  homepage 'https://www.realmacsoftware.com/deepdreamer'

  app 'Deep Dreamer.app'
end
