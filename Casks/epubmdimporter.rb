cask 'epubmdimporter' do
  version '1.8'
  sha256 '740c288a6ad2c98d5c94cf6eccba3ef535faaeda5ad408a897f84d4b324d16e0'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.mdimporter.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom',
          checkpoint: '5d6c50f8872783e53e5e4024e900e2ea35c45c84dd0a072c7f8cb8a4d29e0533'
  name 'EPUB Spotlight'
  homepage 'https://github.com/jaketmp/ePub-quicklook'

  artifact 'epub.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/AA_epub.mdimporter"

  postflight do
    system_command '/usr/bin/mdimport', args: ['-r', "#{ENV['HOME']}/Library/Spotlight/AA_epub.mdimporter"]
  end
end
