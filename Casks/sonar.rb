cask 'sonar' do
  version '0.6.9'
  sha256 'e0e0fcac72f212f57e0f77e24e9581d4f79099de56d26cc91772fc7144c8a697'

  # github.com/facebook/Sonar was verified as official when first introduced to the cask
  url "https://github.com/facebook/Sonar/releases/download/v#{version}/Sonar.zip"
  appcast 'https://github.com/facebook/Sonar/releases.atom', checkpoint: '64530a80b66ea786290259618db07238d2b1b795d56b76b21ea314fc46c49d49'
  name 'Sonar'
  homepage 'https://fbsonar.com/'

  app 'Sonar.app'
end
