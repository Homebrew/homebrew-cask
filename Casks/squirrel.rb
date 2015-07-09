cask :v1 => 'squirrel' do
  version '0.9.26.2'
  sha256 '7ba8f934f8d4fe1d42c944ea0771f1a54ed558dd65ea558c4ba4d203505bc130'

  url "https://dl.bintray.com/lotem/rime/Squirrel-#{version}.zip"
  name 'Squirrel'
  homepage 'https://github.com/rime/squirrel'
  license :gpl

  depends_on :macos => '>= :lion'

  pkg 'Squirrel.pkg'

  uninstall :pkgutil => 'com.googlecode.rimeime.Squirrel.pkg',
            :delete => '/Library/Input Methods/Squirrel.app'
end
