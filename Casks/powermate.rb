cask 'powermate' do
  version '1.2.5,3.2015.08'
  sha256 '9f59f5d5bdce076cd9d0e86375fc9d935f54fb4fc0b18178c22a0fe16e9027b3'

  url "https://support.griffintechnology.com/wp-content/uploads/sites/#{version.after_comma.dots_to_slashes}/PowerMate_v#{version.before_comma}.zip"
  name 'Griffin PowerMate'
  homepage 'https://support.griffintechnology.com/support/powermate/'

  app 'PowerMate.app'
end
