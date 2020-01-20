cask 'orka' do
  version '1.0.8'
  sha256 '4c69477ca4731066f6b4cc31d38b6864d465d548f60e2e516d39a80d73fe0562'

  # dropbox.com/sh/lzq0qi2g7ep32eu was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/sh/lzq0qi2g7ep32eu/AACox5Z982jnGfzL8yyU-bm_a/orka-cli-macos?dl=1'
  appcast 'https://orkadocs.macstadium.com/docs/downloads'
  name 'Orka CLI'
  homepage 'https://orkadocs.macstadium.com/docs'

  binary 'orka-cli-macos', target: 'orka'
end
