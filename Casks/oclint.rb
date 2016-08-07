cask 'oclint' do
  version '0.10.3,15.5.0'
  sha256 '533b4fdc82664a3d3dede3820fee664c71c3fba2bef4ba096a37ec9c5fc2dae5'

  # github.com/oclint/oclint was verified as official when first introduced to the cask
  url "https://github.com/oclint/oclint/releases/download/v#{version.before_comma}/oclint-#{version.before_comma}-x86_64-darwin-#{version.after_comma}.tar.gz"
  appcast 'https://github.com/oclint/oclint/releases.atom',
          checkpoint: '639a1cc6f674688b95c0f8be51088c791141f6517985fae1477a29def0720f9f'
  name 'OCLint'
  homepage 'http://oclint.org'
  license :oss

  binary "oclint-#{version.before_comma}/bin/oclint"
  binary "oclint-#{version.before_comma}/bin/oclint-json-compilation-database"
  binary "oclint-#{version.before_comma}/bin/oclint-xcodebuild"
  binary "oclint-#{version.before_comma}/lib/oclint", target: '/usr/local/lib/oclint'

  caveats do
    files_in_usr_local
  end
end
