cask :v1 => 'screensteps' do
  version '2.9.6'
  sha256 'e48082731531198d8c22e5218a7aa59500843e4fd4fd7f44161688aebcfc621b'

  url 'http://www.bluemangolearning.com/download/screensteps/2_0/release/ScreenSteps.dmg'
  homepage 'http://www.bluemangolearning.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ScreenSteps.app'
end
