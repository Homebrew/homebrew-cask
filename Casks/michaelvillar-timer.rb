cask 'michaelvillar-timer' do
  version '1.5.2'
  sha256 'f7adbf0f04ecdfb6cf914774859bc187d2ae944a51b748ddc82de4ecd34e9252'

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  appcast 'https://github.com/michaelvillar/timer-app/releases.atom'
  name 'Timer'
  homepage 'https://github.com/michaelvillar/timer-app'

  app 'Timer.app'
end
