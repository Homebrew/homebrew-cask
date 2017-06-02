cask 'preference-manager' do
  version '4.4.1.0'
  sha256 'f41eeb3823da73ae69ce9f1cb7e0a3252bf39b6c0d59a9801a5b9b0967f012df'

  url "http://www.digitalrebellion.com/download/prefman?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/rss/appcasts/pref_man.xml',
          checkpoint: '36eda5f445d2b1adf5503ec0cbae5cccbc5ab607ac0117a5198044377e65a31e'
  name 'Preference Manager'
  homepage 'https://www.digitalrebellion.com/prefman/'

  app 'Preference Manager.app'
end
