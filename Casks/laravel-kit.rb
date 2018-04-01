cask 'laravel-kit' do
  version '1.2.1'
  sha256 '2da9fa8d34f95ef5140cdfc777f5756db5db458a2fb88bd0ea3567fe33cf6081'

  url "https://github.com/tarequemdhanif/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast 'https://github.com/tarequemdhanif/laravel-kit/releases.atom',
          checkpoint: '9ee31fb21354736268a71da30b2c0405a194cbae4248493a4990a6621b336f63'
  name 'Laravel Kit'
  homepage 'https://github.com/tarequemdhanif/laravel-kit'

  auto_updates true

  app 'Laravel Kit.app'
end
