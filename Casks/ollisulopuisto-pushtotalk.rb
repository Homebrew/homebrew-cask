cask 'ollisulopuisto-pushtotalk' do
  version '0.2.1'
  sha256 'c34a2f0ed22a0b1099d98cfc744d478559a51d5a19c97d10caab40b5fc88ade9'

  url "https://github.com/ollisulopuisto/osx-push-to-talk/releases/download/#{version}/PushToTalk.app.zip"
  appcast 'https://github.com/ollisulopuisto/osx-push-to-talk/releases.atom'
  name 'ollisulopuisto-osx-push-to-talk'
  homepage 'https://github.com/ollisulopuisto/osx-push-to-talk'

  app 'PushToTalk.app'
end
