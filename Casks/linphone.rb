cask :v1 => 'linphone' do
  version '3.8.1'
  sha256 '925943867ee62c49450bf423479a8eb8cb42107e1319b4054233c4e4ac4a252c'

  # gnu.org is the official download host per the vendor homepage
  url "http://download-mirror.savannah.gnu.org/releases/linphone/#{version.sub(%r{\d+$},'')}x/macos/linphone-#{version}.dmg"
  gpg "#{url}.sig",
      :key_id => '3ecd52dee2f56985'
  name 'Linphone'
  homepage 'https://www.linphone.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Linphone.app'
end
