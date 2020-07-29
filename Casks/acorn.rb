cask 'acorn' do
  version '6.6'
  sha256 'ab257ea29e819763b8e2052c13604debaa26959eb431b86197c8285f9e820403'

  url "https://flyingmeat.com/download/Acorn-#{version}.zip"
  appcast "https://www.flyingmeat.com/download/acorn#{version.major}update.xml"
  name 'Acorn'
  homepage 'https://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
