cask 'gramps' do
  version '4.2.5-1'
  sha256 'a1b7e57c9349bf4137ee0d932f23882ff461460dcf99e7f03e3620e0edbf8d58'

  # github.com/gramps-project/gramps was verified as official when first introduced to the cask
  url "https://github.com/gramps-project/gramps/releases/download/v#{version.major_minor_patch}/Gramps-Intel-#{version}.dmg"
  appcast 'https://github.com/gramps-project/gramps/releases.atom',
          checkpoint: '21afd12a9830d38f741cab4452b405f02e89b69a99105118fb2ff69174a6efc2'
  name 'Gramps'
  homepage 'https://gramps-project.org/'

  app 'Gramps.app'
end
