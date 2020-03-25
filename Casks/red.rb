cask 'red' do
  version '0.6.4'
  sha256 '43bab7be96978b7740879eefd9131dbd51280ed319e96d83f87b2df05ea938c7'

  url "https://static.red-lang.org/dl/mac/red-#{version.no_dots}"
  name 'Red Programming Language'
  homepage 'https://www.red-lang.org/'

  # red doesn't work on Catalina, see https://github.com/red/red/issues/4359#issuecomment-602205340
  depends_on macos: '<= :mojave'
  container type: :naked

  binary "red-#{version.no_dots}", target: 'red'
end
