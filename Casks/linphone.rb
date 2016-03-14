cask 'linphone' do
  version '3.9.1'
  sha256 '0f45bb9cc2d2ea32631c0e8dedc28b2139d5cb0d55a007704c133b2ef41ffbe2'

  # gnu.org is the official download host per the vendor homepage
  url "http://download-mirror.savannah.gnu.org/releases/linphone/#{version.sub(%r{\d+$}, '')}x/macos/linphone-#{version}.pkg"
  name 'Linphone'
  homepage 'https://www.linphone.org/'
  license :gpl
  gpg "#{url}.sig",
      key_id: '3ecd52dee2f56985'

  container type: :xar

  app 'Linphone.app'

  preflight do
    system '/usr/bin/tar', '-xf', "#{staged_path}/linphone.pkg/Payload", '-C', staged_path
  end

  postflight do
    system 'rm', '-rf', "#{staged_path}/linphone.pkg"
    system 'rm', '-f', "#{staged_path}/Distribution"
  end
end
