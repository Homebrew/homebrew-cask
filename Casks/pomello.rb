cask 'pomello' do
  version '0.10.10'
  sha256 'b9a5e8038f9bba3263fe88af4e79d59ef8713fe8d1b33086c544e813a1862ffc'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
