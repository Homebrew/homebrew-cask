cask 'speechify' do
  version '3.3.0'
  sha256 'ed22099543618d62041bf9c381b7dce976526093a12e0a9cff82997dd6fca63b'

  url 'https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/SpeechifyVoiceAssistant.dmg'
  appcast 'https://storage.googleapis.com/speechifymobile.appspot.com/macAgentSparkle/appcast.xml'
  name 'Speechify AI Assistant'
  homepage 'https://www.speechify.com/'

  app 'Speechify AI Assistant.app'
end
