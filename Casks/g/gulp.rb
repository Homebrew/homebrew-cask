cask "gulp" do
  version "0.1.0"
  sha256 "59fed5d8c801c9302debf463f2d274404548e23433c965144e69a0b4a2e23851"

  url "https://github.com/sindresorhus/gulp-app/releases/download/#{version}/gulp.app.zip"
  name "gulp-app"
  homepage "https://github.com/sindresorhus/gulp-app"

  deprecate! date: "2023-12-17", because: :discontinued

  app "gulp.app"

  # No zap stanza required
end
