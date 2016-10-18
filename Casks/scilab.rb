cask 'scilab' do
  version '5.5.2'
  sha256 '6e855c4aae6f75d37ced77bea64ac5cf33f65f3925107c65547b2a5fede3bd91'

  url "https://www.scilab.org/download/#{version}/scilab-#{version}-x86_64_yosemite.dmg"
  name 'Scilab'
  homepage 'https://www.scilab.org'

  app "scilab-#{version}.app"
end
