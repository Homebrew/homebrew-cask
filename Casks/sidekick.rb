cask 'sidekick' do
  version '4.2.8'
  sha256 'ecba54e6c19e510d4655c8afb5fb79616f75ff352a92e142c9b52291a3664fe1'

  url "http://releases.oomphalot.com/Sidekick/Sidekick_#{version}.zip"
  appcast 'http://updates.oomphalot.com/?app=Sidekick',
          checkpoint: '37c0364aa754db80dd18b04de35bd649c898cdcc8f78673321083db4f6daf88f'
  name 'Sidekick'
  homepage 'http://oomphalot.com/sidekick/'

  auto_updates true

  app 'Sidekick.app'
end
