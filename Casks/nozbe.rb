cask 'nozbe' do
  version '3.9.2'
  sha256 '1ece8b303a0f93af291b978f6ec06a388c5fcb4fd8daa4c075d8de7f28806a09'

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
