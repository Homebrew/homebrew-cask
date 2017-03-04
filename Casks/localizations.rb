cask 'localizations' do
  version '0.2'
  sha256 '7feebd7f46f0244aec4e321ec3dda556bc1be80ee6a3b81167a964926c082e99'

  url "https://github.com/athiercelin/localizations/releases/download/#{version}/Localizations.zip"
  appcast 'https://github.com/athiercelin/localizations/releases.atom',
          checkpoint: '38c886eef9d1b4d396d587e3dbed037a4c5e6c7b00e34696a5024f44ef87e903'
  name 'Localizations'
  homepage 'https://github.com/athiercelin/localizations'

  app 'Localizations.app'
end
