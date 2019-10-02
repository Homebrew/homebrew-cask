cask 'mousefix' do
  version '0.9.0'
  sha256 'f6290b3251f9152246b8d06ad8bf8249976fe0f69b09cb031fedbe6b3e8c25c9'

  url 'https://mousefix.org/maindownload/MacMouseFix.zip'
  name 'Mouse Fix'
  homepage 'https://mousefix.org/'

  auto_updates true
  container type: :zip

  prefpane 'Mouse Fix.prefPane'
end
