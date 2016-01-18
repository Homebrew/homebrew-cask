cask 'linphone' do
  version '3.8.5'
  sha256 '250d6b0b8ca3fd5029185b479199ae47b5d8c57062007a2bbb864ca63034a5de'

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
