cask 'epubmdimporter' do
  version '1.8'
  sha256 '740c288a6ad2c98d5c94cf6eccba3ef535faaeda5ad408a897f84d4b324d16e0'

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.mdimporter.zip"
  appcast 'https://github.com/jaketmp/ePub-quicklook/releases.atom',
          checkpoint: 'f4b69e735f425ff4f6d8e4cc4c2f2a9daee6140c0988176f64626d4c7b61eb78'
  name 'EPUB Spotlight'
  homepage 'https://github.com/jaketmp/ePub-quicklook'

  artifact 'epub.mdimporter', target: "#{ENV['HOME']}/Library/Spotlight/AA_epub.mdimporter"

  postflight do
    system 'mdimport', '-r', "#{ENV['HOME']}/Library/Spotlight/AA_epub.mdimporter"
  end
end
