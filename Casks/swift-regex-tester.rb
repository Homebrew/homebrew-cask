cask 'swift-regex-tester' do
  version '1.0.0'
  # https://www.virustotal.com/#/file/ab0134d86fd8d174b4765251734b85ff5b091b505428b6c52076d5bb363ab564
  sha256 'ab0134d86fd8d174b4765251734b85ff5b091b505428b6c52076d5bb363ab564'

  url "https://github.com/Kevin-De-Koninck/Swift-Regex-Tester/releases/download/v#{version}/Swift.Regex.Tester.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Swift-Regex-Tester/releases.atom'
  name 'Swift Regex Tester'
  homepage 'https://github.com/Kevin-De-Koninck/Swift-Regex-Tester'

  app 'Swift Regex Tester.app'
end
