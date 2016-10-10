cask 'diptrace' do
  version :latest
  sha256 :no_check

  url 'http://diptrace.com/downloads/DipTrace.dmg'
  name 'diptrace'
  homepage 'http://diptrace.com'

  depends_on x11: true

  app 'DipTrace.app'
end
