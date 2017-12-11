cask 'clarify' do
  version '2.0.10-215'
  sha256 '107f2853754fae851c28c1c882074861fdf84daec9dfa88b7205be1e224223da'

  # amazonaws.com/files.clarify-it.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.clarify-it.com/v2/installers/Clarify%20#{version}.dmg"
  appcast "https://www.bluemangolearning.com/download/clarify/#{version.major_minor.dots_to_underscores}/auto_update/release/clarify_appcast.xml",
          checkpoint: '168b1e6e383df8232bd9e3ac645975500c92705234f3188a9e1f89db18c23eef'
  name 'Clarify'
  homepage 'http://www.clarify-it.com/'

  app 'Clarify.app'
end
