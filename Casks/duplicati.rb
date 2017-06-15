cask 'duplicati' do
  version '2.0.1.61,2017-05-30'
  sha256 '8ac19a3fa8aea4429476dbac9255c917030fe4b14ce1e1e47df2128a15108e1a'

  url "https://updates.duplicati.com/experimental/duplicati-#{version.before_comma}_experimental_#{version.after_comma}.dmg"
  appcast 'https://github.com/duplicati/duplicati/releases.atom',
          checkpoint: '9a9880a9a5dd39d00934715988b8a100cd8623065d07cb005c4569e2e665bd63'
  name 'Duplicati'
  homepage 'https://www.duplicati.com/'

  app 'Duplicati.app'
end
