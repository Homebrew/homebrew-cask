cask 'gulp' do
  version '0.1.0'
  sha256 '59fed5d8c801c9302debf463f2d274404548e23433c965144e69a0b4a2e23851'

  url "https://github.com/sindresorhus/gulp-app/releases/download/#{version}/gulp.app.zip"
  appcast 'https://github.com/sindresorhus/gulp-app/releases.atom',
          checkpoint: 'fcd58c1f7328c53e5d2311b7ee46b0bf58346d8550c0aa77cd9565be5908fb48'
  name 'gulp-app'
  homepage 'https://github.com/sindresorhus/gulp-app'

  app 'gulp.app'
end
