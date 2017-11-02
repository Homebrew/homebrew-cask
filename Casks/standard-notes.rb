cask 'standard-notes' do
  version '2.1.0'
  sha256 '415e5775cf928627e711b290d7114679bb45869f8da6aeff5c66b733a1c1a218'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '81e3bf9dc464b74c1ec4366634f4c710e7d27a6963e3157b3c9b8ee241b6d957'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
