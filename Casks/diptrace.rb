cask 'diptrace' do
  version :latest
  sha256 :no_check

  url 'http://diptrace.com/downloads/DipTrace.dmg'
  name 'diptrace'
  homepage 'http://diptrace.com'
  license :freemium

  depends_on cask: 'xquartz'

  app 'DipTrace.app'
end
