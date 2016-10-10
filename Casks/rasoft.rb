cask 'rasoft' do
  version '3.6'
  sha256 'a285edb402ea394b1044f441236751403dae6399d46c455833f658af18a287ec'

  url "https://www.rakocontrols.com/rasoftx/release/Rasoft%20Pro-#{version}.dmg"
  name 'Rasoft Pro'
  homepage 'https://rakocontrols.com/useful-information/rasoftpro/'

  app 'Rasoft Pro.app'
end
